# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Examples:
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# The tests above should print true

# Inputs: a positive integer
# Outputs: a string of alternating 0's and 1's, with the length matching the given integer. The above tests should print true.

# Pseudocode:
# In a stringy method with 1 argument
# (Validate positive integer?)
# Create empty string variable called 'string'
# If the string length is less than the integer and is odd, add a 1 to string variable.
# If the string length is less than the integer and is even, add a 0 to the string variable
# if the string legnth is equal to the integer, stop the method

def stringy(integer)
  string = ""
  integer.times do |integer|
    char_to_add = integer.odd? ? "0" : "1"
    string += char_to_add
  end
  string
end

puts stringy(10)
