require 'pry'
system 'clear'

# First time solving
def drop_while(array)
  false_count = 0
  array.each_with_object([]) do |element, result|
    if false_count == 0
      unless yield(element)
        result << element
        false_count += 1
      end
    elsif false_count == 1
      result << element
    end
  end
end

# Second time solving
def drop_while(array)
  result = []
  drop = false
  array.each do |element|
    unless drop
      drop = true unless yield(element)
    end
    result << element if drop
  end
  result
end

# Launch School Solution
def drop_while(array)
  index = 0
  while index < array.size && yield(array[index])
    index += 1
  end

  array[index..-1]
end

puts drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
puts drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
puts drop_while([1, 3, 5, 6]) { |value| true } == []
puts drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
puts drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
puts drop_while([]) { |value| true } == []
puts
