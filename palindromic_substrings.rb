=begin
Problem:
Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

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
Strings, Array

Algorithm:
Given a string, create an array of all substrings from that string. Check to see if each string in that array is the same forward and backwards and also bigger than 1 character. If it is, add it to a new array Palindromes. Once the iteration is complete, return that array.

Code:
=end

def leading_substrings(string)
  substrings = []
  counter = 1

  until substrings.size == string.size
    substrings << string[0,counter]
    counter += 1
  end

  substrings
end

def substrings(string)
  substrings = []
  counter = 0

  loop do
    substrings << leading_substrings(string[counter, string.size])
    counter += 1
    break if counter == string.size
  end

  substrings.flatten
end

def palindromes(string)
  palindromes = []
  
  substrings(string).each do |substring|
    if substring == substring.reverse && substring.size > 1
      palindromes << substring 
    end
  end

  palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]