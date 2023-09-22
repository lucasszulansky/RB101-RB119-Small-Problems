=begin
Problem:
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Data:
Input is an array, and the output is an array.

Algorithm:
Given two arrays with the same number of elements, create a new array. Iterate through the first array, multiplying each number with the equivilent number from the 2nd array, and adding the result to the new array. Return the new array.

Code:
=end

def multiply_list(array1, array2)
  product_array = []

  array1.each_with_index do |num, index|
    product_array << num * array2[index]
  end

  product_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
