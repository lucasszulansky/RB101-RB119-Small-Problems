=begin
Problem:
Given the below array:

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

Implicit requirement: all array words are lowercase 

Example:
See above

Data:
Input is an array of strings. We will need to check if the strings are anagrams, perhaps using arrays.

Algorithm:
Method for checking if a word is an anagram: write a method anagram? that takes two strings as parameters. Split the two strings into an array of their characters and sort them. If the two arrays are equal, then the words are anagrams.

Method for making the array of anagrams: given an array of words, compare the first word with each other word in the array and check if the two words are anagrams. If they are, add them to an array of anagrams. When finished comparing the first word, print the array of anagrams. Then do the same starting with the second word. When 

Code:
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

result = {}

words.each do |word|
  key = word.chars.sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "-----"
  p v
end


