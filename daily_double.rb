=begin
Problem
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data:
String argument
Converted into an array
Returned as a string

Algorithm:
Given a string, convert that string into an array of all characters (including spaces). Iterate through this array, adding each character to a new array, unless it is the same as the final character in the array. Convert the new array to a string.

Code:
=end

def crunch(string)
  characters = string.chars
  crunched_characters = []

  characters.each do |character|
    crunched_characters << character unless character == crunched_characters.last
  end

  crunched_characters.join

end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''