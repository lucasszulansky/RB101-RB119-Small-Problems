=begin
Problem:
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.

Input: A string with >=1 character words & spaces
Output: A string in which the first and last letters of every word are swapped

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

Data:
Input is a string
Converted to an array for iterating
Returns a string

Algorithm:
Given a string of words seperated by spaces, split each of their own words into an array of all the words. Iterate through the array. For each string array element, swap the first character with the last character. Return the swapped array as a string.

Code:
=end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end

  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'