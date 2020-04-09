require 'pry'
system 'clear'

def step(start_val, end_val, step_val)
  iteration_val = start_val
  loop do
    yield(iteration_val)
    break if iteration_val >= end_val
    iteration_val += step_val
  end
  iteration_val
end

step(1, 10, 3) { |value| puts "value = #{value}" }
puts
