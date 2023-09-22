=begin
Problem:
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

Input: A string with some words (all lowercased) and an assortment of non-alphabetic characters
Output: That string with all of the non-alphabetic characters replaced by spaces

Explicit requirements:
If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).


Examples:
cleanup("---what's my +*& line?") == ' what s my line '

Data:
String input
Split string into array for iteration
Output string

Algorithm:
Given a string, split that string into words. Split those words into indivudual characters, and iterate through every character in every word, checking against a constant to make sure they are all letters. If a character is not a letter, replace it with a space, unless the previous character is the same as the current character. If the previous character is the same, skip the iteration. Once all the words have been checked and all necessary characters replaced with spaces, conver the array of words back into a string, and return it.

Code:
=end

ALPHABET = ("a".."z").to_a

def cleanup(string)

  clean_chars = []

  string.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join

end

p cleanup("---what's my +*& line?") #== ' what s my line '
