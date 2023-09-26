=begin
Problem: Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Implicit requirements: No multiple words, all lowercase, return a new array.

Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Data:
Input is a string, output is an array of strings.

Algorithm:
Given a string, take the first character of that string and put it into a new array. Then take the first and second character of that string, and put it into a new array. Continue copying the first n characters of the string into an array until the array size equals the size of the input string. Return the new array.

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

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']