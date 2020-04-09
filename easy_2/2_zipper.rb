require 'pry'
system 'clear'

# First time solving exercise
def zip(array_1, array_2)
  index = 0
  result = []

  loop do
    break if index == array_1.size
    result << [array_1[index], array_2[index]]
    index += 1
  end

  result
end

# Second time solving exercise
def zip(array1, array2)
  array1.map.with_index do |elem, idx|
    [elem, array2[idx]]
  end
end

# Launch School Solution 1
def zipper(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << [element, array2[index]]
  end
  result
end

# Launch School Solution 2
def zipper(array1, array2)
  array1.each_with_index.with_object([]) do |(element, index), result|
    result << [element, array2[index]]
  end
end

puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
puts
