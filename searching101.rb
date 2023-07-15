# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Example:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

array = []

puts "Enter the 1st number:"
one = gets.chomp.to_i
array << one

puts "Enter the 2nd number:"
two = gets.chomp.to_i
array << two

puts "Enter the 3rd number:"
three = gets.chomp.to_i
array << three

puts "Enter the 4th number:"
four = gets.chomp.to_i
array << four

puts "Enter the 5th number:"
five = gets.chomp.to_i
array << five

puts "Enter the last number:"
last = gets.chomp.to_i

if array.include?(last)
  puts "The number #{last} appears in #{array}."
else
  puts "The number #{last} does not appear in #{array}."
end
