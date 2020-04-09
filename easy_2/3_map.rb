require 'pry'
system 'clear'

# First time solving
def map(collection)
  collection.each_with_object([]) { |element, result| result << yield(element) }
end

# Second time solving
def map(array)
  result = []
  array.each do |element|
    result << yield(element)
  end
  result
end

puts map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
puts map([]) { |value| true } == []
puts map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
puts map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
puts map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
hash = { a:1, b:2, c:3, d:4 }
puts map(hash) { |key, value| value*2 } == [2, 4, 6, 8]
puts
