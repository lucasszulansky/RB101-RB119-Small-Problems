=begin
Problem:
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

Data:

Algorithm:
Get substrings starting at each letter of the input string.

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


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]