=begin

Problem:
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Explicit requirement: Returns a new array without modifying the original array.

Example:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

Data:
Arrays all the way

Algorithm:
Given an input array, clone that array. On the cloned array, remove the first element and add it to the end of the array. Return the cloned array.

Code:
=end

# def rotate_array(array)
#   cloned_array = array.clone
#   cloned_array << cloned_array.shift
#   cloned_array
# end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, number_of_digits)
  array = integer.digits.reverse
  array[-number_of_digits..-1] = rotate_array(array[-number_of_digits..-1])
  array.join.to_i
end

def max_rotation(integer)
  digits_to_rotate = (integer.digits.size)
  digits_to_rotate.downto(2) do |n|
    integer = rotate_rightmost_digits(integer, n)
  end
  integer
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845