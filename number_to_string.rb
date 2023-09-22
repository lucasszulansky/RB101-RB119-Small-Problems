=begin
Problem: Write a method that takes a positive integer or zero, and converts it to a string representation.

Input: positive integer (or zero)
Output: string of that integer

Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

Data:
Input integer
Hash and arrays to be used in the method
Output string

Algorithm:
Create a constant DIGITS that's assigned to each integer's string equivalent (e.g. 0 => '0', 1 => '1')
Given an integer
Split that integer into digits & assign to a variable integer_digits
Compare each digit to the DIGITS hash - assign it to its equivalant string digit and add it to an array variable string_numbers
Join those string numbers.

Code:
=end

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  integer_digits = integer.digits
  integer_digits.map! {|num| num = DIGITS[num]}
  integer_digits.join.reverse
end

def signed_integer_to_string(integer)
  if integer < 0
    '-' << integer_to_string(-integer)
  elsif integer > 0
    '+' << integer_to_string(integer)
  else
    '0'
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'

