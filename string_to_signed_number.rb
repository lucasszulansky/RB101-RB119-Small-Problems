=begin

Problem:
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

Input: a positive numeric string
Output: that string converted to an integer

Implicit and explicit requirements: Input will be a positive string integer

Examples:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

Data:
We will be iterating through the input string and comparing it to an integer. The input string will be converted to an array. 

Algorithm:
Given a numeric string
Assign a new variable to a new array with each character seperated
Create an empty answer array.
Iterating through each character, compare each character to all string integers 0 through 9 individually.
If a character matches, output the respective integer to the answer array.
Convert that answer array to an integer.

Code:
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  integer_array = string.chars.map {|char| DIGITS[char]}

  final_integer = 0
  counter = integer_array.size-1

  integer_array.each do |num|
    final_integer += num * (10 ** counter)
    counter -= 1
  end

  final_integer

end

def string_to_signed_integer(string)
  if string[0] == '-'
    return -string_to_integer(string[1..-1])
  elsif string[0] == '+'
    return string_to_integer(string[1..-1])
  else
    return string_to_integer(string)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100