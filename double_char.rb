=begin
Problem:
Write a method that takes a string, and returns a new string in which every character is doubled.

Implicit requirements:
Empty string returns an empty string
All characters are doubled

Example:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

Data:
Input is a string, and output is a string. Array used in the method to double characters.

Algorithm:
Given a string, convert that string into an array of its characters. For each array character, change that character into itself * 2. Convert the array back into a string, and return that string.

Code:
=end



def repeater(string)
  array = string.chars.map do |char|
                             char * 2 if 
                           end
  array.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""