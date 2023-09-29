=begin
Problem:
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data:
Input is a string. Will be split into an array of words for iteration.
Output is a string.
We will also have a hash constant.

Algorithm:
Create a constant NUMBERS where each value is an integer from 0 through 9 and each key is that respective integer in lowercase string form (ex. 'zero' 'one' 'two').

Given a string, split that string into words. Iterate over each word. If a word matches a key from our hash, replace it with that key's value. Convert the word array converted back into a string. Then mutate the original string to the changed string.

Code:
=end

NUMBERS = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4,'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9}

# def word_to_digit(string)
#   word_array = string.split

#   word_array.map! do |word|
#     if word[-1] == '.'
#       [word[0..-2], word[-1]]
#     else
#       word
#     end
#   end

#   word_array.flatten!

#   word_array.map! do |word|
#     if NUMBERS.keys.include?(word)
#       NUMBERS[word]
#     else
#       word
#     end
#   end

#   word_array = word_array.join(' ').gsub!(' .', '.')
#   string.gsub!(string, word_array)
#   string
# end

def word_to_digit(string)
  NUMBERS.keys.each do |word|
    string.gsub!(word, NUMBERS[word].to_s)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

