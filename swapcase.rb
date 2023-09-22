=begin
Problem:
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Examples: see below

Data:
Input is string. Returns a new string.

Algorithm:
Given a string, split that string into its characters. Iterate over each character. If a character equals the capitalized version of itself, make it a lowercase character. If not, make it a capitalized character.

Code:
=end

def swapcase(string)
  new_string = string.chars.map do |character|
    if character == character.upcase
      character.downcase
    else
      character.upcase
    end
  end

  new_string.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'