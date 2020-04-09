require 'pry'
system 'clear'

# First time doing exercise
def divisors(integer)
  result = []
  denominator = 1

  loop do
    if integer % denominator == 0
      result << denominator
    end
    denominator += 1
    break if denominator > integer
  end

  result
end

puts divisors(1) == [1]
puts divisors(7) == [1, 7]
puts divisors(12) == [1, 2, 3, 4, 6, 12]
puts divisors(98) == [1, 2, 7, 14, 49, 98]
# puts divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
puts

# Second pass through exercise
def divisors(num)
  range = []

  1.upto(num) do |div|
    range << div if num % div == 0
  end
  range
end

# Further Exploration solution from other student

def divisors_test(n)
   all_partitioned = (1..Math.sqrt(n)).inject([[],[]]) do |acc, divisor|
      if n % divisor == 0
          acc[0] << divisor
          acc[1].unshift(n / divisor) unless n / divisor == divisor
      end
      acc
    end
    all_partitioned[0] + all_partitioned[1]
end



puts divisors_test(12) == [1, 2, 3, 4, 6, 12]
