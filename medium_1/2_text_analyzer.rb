system 'clear'
require 'pry'

class TextAnalyzer
  def process
    file = File.open("sample.txt", 'r')
    yield(file.read) if block_given?
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split(/\n\n/).size} paragraphs"  }
analyzer.process { |file| puts "#{file.split(/\n/).size} lines" }
analyzer.process { |file| puts "#{file.split.size} words" }
puts

# Launch School Solution
# By using File.read in my solution I avoid having to close the file after
# opening it like the solution below

class TextAnalyzer
  def process
    file = File.open('sample.txt', 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} lines" }
analyzer.process { |text| puts "#{text.split(' ').count} words" }

puts
