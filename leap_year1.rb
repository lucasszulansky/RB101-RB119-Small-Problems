=begin
Problem:
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

Input: an integer year greater than 0
Output: a boolean

Explicit requirements:
- Leap years are divisible by 4 but not by 100, unless it is also divisible by 400

Implicit requirements:
- Input must be an integer greater than 0

Examples:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

Data:
Input will be integers, output will be boolean

Algorithm:
Check to make sure the input year is greater than 0
If it isn't return an error message
Then, Check to make sure the year input is divisible by 4
If this is true, check to make sure is not also divisible by 100
If the year is evenly divisible by 100, then check if it is divisible by 400.
If it is divisible by 4, 100 and 400, it is a leap year
If it is divisible by 4 and 100 but not 400, then it is not a leap year
If it is divisible by 4 and not 100, it is not a leap year
If it is not divisible by 4, then it is not a leap year

Code:
=end

def leap_year?(year)
  if year < 0
    puts "Positive years only."
    return
  end

  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      end
      return false
    end
    return true
  else
    return false
  end
  
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true