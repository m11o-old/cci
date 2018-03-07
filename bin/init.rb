counts = [9, 8, 6, 12, 8, 10, 12, 14, 8, 11, 6, 11, 8, 7, 7, 26, 26]

counts.each_with_index do |count, index|
  index += 1

  chapter_name = "chapter%02d" % index
  Dir.mkdir chapter_name unless Dir.exist? chapter_name
  Dir.chdir chapter_name

  count.times do |i|
    i += 1

    prob_name = "#{index}.#{i}"
    Dir.mkdir prob_name unless Dir.exist? prob_name
    Dir.chdir prob_name

    Dir.mkdir "java" unless Dir.exist? "java"
    Dir.mkdir "ruby" unless Dir.exist? "ruby"

    File.open("java/main.java", "w") do |f|
      f.puts <<-EOS
class Main {
  public static void main(String args[]) {
  }
}
      EOS
    end

    File.open("ruby/main.rb", "w") do |f|
      f.puts <<-EOS
# coding: utf-8
      EOS
    end
    Dir.chdir "/Users/ve/cci/#{chapter_name}"
  end
  Dir.chdir "/Users/ve/cci"
end
