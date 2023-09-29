=begin
Problem:
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

Explicit requirements:
Featured numbers are: odd, multiple of 7, unique digits.

Implicit requirements:
What is the largest possible featured number?
9876543201

Examples:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

Data:
Input is an integer. We will use arrays to check certain requirements. Output is an integer, or an error message.

Algorithm:
Given a number, create a loop. For each iteration of that loop, add 1 to the number. Then, check to see if 1) the number is odd, 2) the number is a multiple of 7, and 3) that all the digits are unique. If these are all true, return this number. If not, continue iteration. Return an error message if the number is ever above 9876543201 saying "There is no possible next featured number."

Code:
=end

def featured(number)
  featured_number = number

  return "There is no possibile next featured number." if number > 9876543210 

  loop do
    featured_number += 1
    if (featured_number % 7 == 0) && (featured_number.odd?) && (featured_number.digits.uniq == featured_number.digits)
      return featured_number
    end
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements