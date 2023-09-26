=begin
Problem:
Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

Example: see below

Data: Input are two integers, output is an array. We will need to build the array.

Algorithm:
Given a count and a size integers as inputs, create an empty array variable named array. For each number from 1 up to the count input number(first method argument), multiply that number by the second method argument. Return the array.

Code:
=end

def sequence(count, first_number)
  array = []

  1.upto(count) do |num|
    array << num * first_number
  end

  array
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []