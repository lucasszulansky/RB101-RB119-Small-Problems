=begin
Problem:
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

Data:
String input
Split into an array
Output is an integer

Algorithm:
Given a string
Split that string into an array of its individual characters
Iterate through the array, converting each character to its ascii_value
Return the sum of the array

Code:
=end

def ascii_value(string)
  chars = string.chars
  chars.map! {|char| char.ord}
  chars.sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0