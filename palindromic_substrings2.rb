=begin
Problem:
Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

Explicit requirements:
Consider all characters and pay attention to the case of letters.
Return value should be arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.

Implicit requirements:
Palindromes must have a length of at least 2.
Return an empty array if there are no palindromes in the input string.

Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

Data:
Input is a string. Output is an array whose elements are palindrome substrings from the original string.

We will be generating an array of substrings from the input string.

Algorithm:
Given an input string,
generate an array of all possible substrings.
  Create an empty array variable substrings_array.

  Split the input string into an array of characters and iterate through the array with index (calling the method parameter starting_index).
    Set a variable substring_length equal to 2.
    Within this iteration, create a loop.
      For each iteration of the loop, add a substring of the input string starting at starting_index and with a length of substring_length to the substrings_array array.
      Then, add 1 to the substring_length variable.
      Break out of the loop when substring_length + starting_index > the length of the input string.
      
Iterate through the substrings_array of substrings
  Check if each one is a palindrome by seeing if a reversed version of the substring equals the unreversed version.
  If a substring is a palindrome, keep it.

Return the array of selected palindrome substrings.

Code:
=end
def generate_substrings(string)
  substrings_array = []

  string.chars.each_index do |starting_index|
    substring_length = 2
    loop do
      substrings_array << string[starting_index, substring_length]
      substring_length += 1
      break if starting_index + substring_length > string.size
    end
  end

  substrings_array
end

def palindromes(string)
  generate_substrings(string).select do |substring|
    next if substring.size < 2
    substring.reverse == substring
  end
end

p palindromes('abcd') == []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]