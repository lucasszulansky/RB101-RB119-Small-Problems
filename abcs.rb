=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Explicit requirements:
If a letter on one side of the block is used, the other letter cannot be used
Blocks all have unique letters

Implicit requirements:
Input can be lowercase letters so need to account for that
Input will be a single word with no spaces

Examples:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

Data:
Input will be a string.
We will use a hash to store the block values
Output will be a boolean.

Algorithm:
Create a hash called BLOCKS where every key-value pair is a block of two letters.

Given an input string that is a single word, split that word into characters. Iterate over each character. For each character, check to see if the character is in the hash of used blocks. If it is not, copy its key-value pair into a hash of used blocks. If it is, return false. If all characters are added to the used blocks hash, return true.

Code:
=end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? do |block|
    up_string.count(block) >= 2
  end
end

# def block_word?(word)
#   letters = word.chars
#   used_blocks = {}

#   letters.each do |letter|
#     used_blocks[letter] = BLOCKS[letter]

#     # if used_blocks.keys.include?(letter)
#     #   false
#     #   break
#     # elsif used_blocks.values.include?(letter)
#     #   false
#     #   break
#     # else
#     #   used_blocks.merge(BLOCKS[letter])
#     # end
#   end
#   used_blocks
  
# end



p block_word?('BATCH') #== true
p block_word?('BUTCH') == false
p block_word?('jest') == true