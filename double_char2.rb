=begin
Problem:
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Example:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

Data:
Input is a string, and output is a string. Array used in the method to double characters.

Algorithm:
Given a string, convert that string into an array of its characters. For each array character, change that character into itself * 2. Convert the array back into a string, and return that string.

Code:
=end

CONSONANTS = ('A'..'Z').to_a + ('a'..'z').to_a - 'AEIOUaeiou'.chars

def double_consonants(string)
  array = string.chars.map do |char|
                             if CONSONANTS.include?(char.downcase)
                               char * 2
                             else
                              char
                             end
                           end
  array.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""