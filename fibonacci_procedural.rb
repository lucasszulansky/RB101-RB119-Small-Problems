=begin

fibonacci(1) == 1 (0 + 1)
fibonacci(2) == 1 (0 + 1)
fibonacci(3) == 2 (1 + 1)
fibonacci(4) == 3 (1 + 2)
=end

# def fibonacci(number)
#   fibonacci_array = [0, 1]

#   return 1 if number <= 2

#   (number - 1).times do
#     fibonacci_array << fibonacci_array.last(2).sum
#   end

#   fibonacci_array.last
# end

def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last.digits[0]
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4