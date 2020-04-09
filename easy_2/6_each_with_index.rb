require 'pry'
system 'clear'

# First time solving
def each_with_index(array)
  index = 0
  array.each do |element|
    yield(element, index)
    index += 1
  end
end

# Second time solving
def each_with_index(array)
  index = 0
  loop do
    break if index >= array.size
    yield(array[index], index)
    index += 1
  end
  array
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
puts
