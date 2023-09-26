=begin
Problem:
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

Example:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

Data:
Input is a string, which will be convertd into an array
Output will be a string

Algorithm:
Given a string, convert it into an array of each word. Reverse that array. Turn that array back into a string and return it.

Code:
=end

def reverse_words(words)
  array = words.split.map do |word|
            if word.size >= 5
              word.reverse
            else
              word
            end
  end
  array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS