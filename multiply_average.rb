=begin
Problem:
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Example:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

Data:
Input is an array of integers
Output is a float rounded to 3 decimal places.

Algorithm:
Set a variable total_product equal to 1. Given an array of integers, iterate through them. Multiply each integer with the total_product, then set the total_product variable equal to the result. Convert total_product to a float. Divide the total_product by the size of the array converted to float, and round that number to 3 decimal places. 

Code:
=end

def show_multiplicative_average(array)
  total_product = 1

  array.each do |num|
    total_product *= num
  end

  (total_product.to_f / array.size.to_f).round(3)
end

puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
