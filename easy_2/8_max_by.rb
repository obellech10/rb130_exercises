require 'pry'
system 'clear'

def max_by(array)
  max_value = nil
  result = nil

  array.each do |element|
    block_value = yield(element)
    if max_value.nil? || block_value >= max_value
      max_value = block_value
      result = element
    end
  end

  result
end

puts max_by([1, 5, 3]) { |value| value + 2 } == 5
puts max_by([1, 5, 3]) { |value| 9 - value } == 1
puts max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
puts max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
puts max_by([-7]) { |value| value * 3 } == -7
puts max_by([]) { |value| value + 5 } == nil
puts
