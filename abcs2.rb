=begin
Problem:
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Input: String of a single word (capitalized or lowercased)
Output: Boolean

Examples:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

Data:
Input is a string. We will be using arrays to manipulate the string and compare it to an array of blocks. The output will be a boolean.

Algorithm:
Build an array called blocks of sub arrays with two elements (each letter).

Given an input string, capitalize and split that string into an array of its characters. For each word in the input string, iterate through the array of blocks and check to see if each sub-array contains the letter. If a sub-array contains the letter, delete that sub array. If any letter cannot be found in the blocks array, return false. If all letters can be found, return true.

Code:
=end

def block_word?(string)
  blocks = %w(B:O X:K D:Q C:P N:A G:T R:E F:S J:W H:U V:I L:Y Z:M)
  starting_blocks_size = blocks.size
  
  letters = string.upcase.chars

  letters.each do |letter|
    blocks.each_with_index do |block, index|
      if block.include?(letter)
        blocks.delete_at(index)
      end
    end
  end
  
  blocks.size == starting_blocks_size - string.size
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true