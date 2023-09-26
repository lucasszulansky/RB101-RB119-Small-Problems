=begin
Problem:
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

Don't use the Array#sum method for your solution - see if you can solve this problem using iteration more directly.

Explicit requirements:
Don't use array#sum
Positive integers only
Array won't be empty

Examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

Data:
Input is an array of integers
Output is a single integer

Algorithm:
Create an empty variable named sum. Given an array of integers, iterate over that array. Add the value of each element in the array to the sum variable. After iteration is complete, divide the sum variable by the number of elements in the array passed in as an argument.

Code:
=end

def average(array)
  sum = 0
  array.each do |num|
    sum += num
  end

  sum / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40