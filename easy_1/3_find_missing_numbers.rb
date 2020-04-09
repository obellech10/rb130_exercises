require 'pry'
system 'clear'

# First time doing exercise
# def missing(array)
#   result = []
#   last_element = array.last
#   value = array.first
#
#   loop do
#     break if value == last_element
#     unless array.include?(value)
#       result << value
#     end
#     value += 1
#   end
#
#   result
# end

# Second pass through exercise
def missing(array)
  range = (array[0]..array[-1]).to_a

  range.select do |num|
    !array.include?(num)
  end
end

# Launch School Solution
def missing_2(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat(((first + 1)..(second - 1)).to_a)
  end
  result
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []
puts
puts missing_2([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing_2([1, 2, 3, 4]) == []
puts missing_2([1, 5]) == [2, 3, 4]
puts missing_2([6]) == []
puts
