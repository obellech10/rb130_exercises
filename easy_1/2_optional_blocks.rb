require 'pry'
system 'clear'

def compute(param)
  # if block_given?
  #   yield(param)
  # else
  #   'Does not compute.'
  # end
  return 'Does not compute.' unless block_given?
  yield(param)
end

# puts compute { 5 + 3 } == 8
puts compute(5) { |num| num * 2 } == 10
# puts compute { 'a' + 'b' } == 'ab'
puts compute('b') { |letter| 'a' + letter } == 'ab'
# puts compute == 'Does not compute.'
puts compute(5) == 'Does not compute.'
puts
