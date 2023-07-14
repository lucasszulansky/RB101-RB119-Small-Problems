# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Example - repeat('Hello', 3)
# Outputs:
# Hello
# Hello
# Hello

# inputs: string, positive integer
# outputs: string printed as many times as the integer indicates

# Pseudocode:
# 1) validate that the arguments are a string and a positive integer
# 2) print the string n times, with n being the value of the integer

def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat("Hello", 10)