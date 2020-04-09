system 'clear'
require 'pry'

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *food, wheat |
  puts food.join(', ')
  puts wheat
end
puts
gather(items) do | fruit, *veggies , wheat |
  puts fruit
  puts veggies.join(', ')
  puts wheat
end
puts
gather(items) do | fruit, *food |
  puts fruit
  puts food.join(', ')
end
puts
gather(items) do | apple, corn , cabbage, wheat |
  puts "#{apple}, #{corn}, #{cabbage}, and #{wheat}"
end
puts
