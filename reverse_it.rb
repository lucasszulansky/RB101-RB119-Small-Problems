=begin
Problem:
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Explicit requirements: any number of spaces results in ''
Implicit requirements: capital letters are maintained

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

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') #== 'World Hello'
puts reverse_sentence('Reverse these words') #== 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''