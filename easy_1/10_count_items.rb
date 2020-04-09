require 'pry'
system 'clear'

def count(collection)
  true_count = 0
  collection.each do |item|
    true_count += 1 if yield(item)
  end
  true_count
end

puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2
puts

# Further Exploration
def count_2(collection)
  collection.select { |element| yield(element) }.size
end

puts count_2([1,2,3,4,5]) { |value| value.odd? } == 3
puts count_2([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count_2([1,2,3,4,5]) { |value| true } == 5
puts count_2([1,2,3,4,5]) { |value| false } == 0
puts count_2([]) { |value| value.even? } == 0
puts count_2(%w(Four score and seven)) { |value| value.size == 5 } == 2
puts
