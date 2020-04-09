require 'pry'
system 'clear'

# First time doing exercise
def any?(array)
  return false if array.empty?
  result = nil

  array.each do |element|
    result = yield(element)
    return result if result == true
  end

  result
end

# Second pass through exercise
def any?(collection)
  collection.each do |element|
    return true if yield(element)
  end
  false
end

# Launch School Solution
def any?(collection)
  collection.each { |item| return true if yield(item) }
  false
end

puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([1, 3, 5, 7]) { |value| value.even? } == false
puts any?([2, 4, 6, 8]) { |value| value.odd? } == false
puts any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts any?([1, 3, 5, 7]) { |value| true } == true
puts any?([1, 3, 5, 7]) { |value| false } == false
puts any?([]) { |value| true } == false
puts
