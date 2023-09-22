=begin

Problem:
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Input: a string
Output: a hash that shows the number of words of different sizes

Explicit requirements: punctuation counts as part of the word size

Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

Data:
The input is a string, which we will then convert to an array. The final word counts will be in a hash.

Algorithm:
Given a string, convert that string into an array of each word. Iterate over the array, and convert each word into its size. Assign each size to a hash where the key is the size of the word, and the value is 1. If the hash already contains a key of a certain size, add 1 to its value. Return that hash.

Code:
=end

def word_sizes(string)
  word_sizes_hash = {}

  string.split.each do |word|
    if word_sizes_hash.key?(word.size)
      word_sizes_hash[word.size] += 1
    else
      word_sizes_hash[word.size] = 1
    end
  end

  word_sizes_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}