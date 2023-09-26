=begin
Problem:
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Implicit requirements: both numbers are positive

Examples;
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Data: Two integers as input, printed integers and words as output

Algorithm:
Given a starting number and an ending number, iterate over a range that starts with and ends with those numbers. For each number in that range, print FizzBuzz if it is divisible by 3 and 5. If not, print "Buzz" if it is divisible by 5, and print "Fizz" if it is divisible by 3. If it is not divisible by 3 or 5, print the number. 

Code:
=end

def fizzbuzz(num1, num2)
  result = []
  (num1..num2).each do |num|
    result << fizzbuzz_value(num)
  end
  puts result.join(', ')
end

def fizzbuzz_value(num)
  if num % 5 == 0 && num % 3 ==0
    "FizzBuzz"
  elsif num % 5 == 0
    "Buzz"
  elsif num % 3 == 0
    "Fizz"
  else
    num
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz