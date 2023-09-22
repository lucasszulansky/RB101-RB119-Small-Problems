=begin
Problem:
Write a method short_long_short that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

Input: Two strings
Output: New string which is the result of concatenating the shorter string, the longer string, and the shorter string once again.

Explicit requirements: Two strings turn into one new string
Implicit requirements: An empty string can be accepted as an argument


Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

Data type:
This problem will exclusively use strings

Algorithm:
Define a method with two arguments (string1, string2)
If string1 is longer than string2, add string1, then string2, then string1, and return that result
If string2 is longer, do the above but vise versa.

Code
=end

def short_long_short(string1, string2)
  if string1.size < string2.size
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

