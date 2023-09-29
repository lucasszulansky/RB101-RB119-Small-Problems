=begin
Problem:
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Implicit requirements: Input is always positive

Example:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Data:
Input is an integer, output is an integer

Algorithm:
Create an empty array called numbers. Given an integer, add it to the numbers array. Then subtract 1 from that number, and add it to the array. Loop this until the number is 0.

Create a variable square_of_the_sum and set it equal to to the sum of the array squared. Create another variable sum_of_the_square. Iterate through the array and change each element to itself squared. Sum the changed elements and assign to the sum_of_the_square variable. Return square_of_the_sum minus sum_of_the_square.

Code:
=end

def sum_square_difference(number)
  numbers_array = (1..number).to_a

  square_of_the_sum = (numbers_array.sum) ** 2
  sum_of_the_square = numbers_array.map {|num| num ** 2}.sum

  square_of_the_sum - sum_of_the_square
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150