require 'pry'
system 'clear'

def each_cons(collection)
  index = 0
  loop do
    break if index >= collection.size - 1
    yield(collection[index], collection[index + 1])
    index += 1
  end
  nil
end

# Launch School Solution
def each_cons(array)
  array.each_with_index do |value, index|
    break if index + 1 >= array.size
    yield(value, array[index+1])
  end
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
puts result == nil
puts hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
puts hash == {}
puts result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
puts hash == {'a' => 'b'}
puts result == nil
puts
