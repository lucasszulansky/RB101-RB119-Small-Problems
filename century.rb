=begin
Problem: Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Input: an integer year
Output: a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

Explicit requirements: The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
Implicit requirements: Output strings needs to end with st, nd, rd, or th depending on century number

Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Data:
The input will be an integer.
The output will be a string.

Algorithm:
Given an integer
Initialize an empty century string variable
If that integer has no remainder when divided by 100
That integer's century equals that integer divided by 100 converted to a string & assigned to string variable
If that integer has a remainder when divided by 100
That integer's century equals that integer / 100 + 1 converted to string & assigned to string variable
Now we check the last element of the string variable
If it ends in 1, we add string "st" to that variable
If it ends in 2, we add string "nd"
If it ends in 3, we add add "rd"
If it ends in any other number, we add "th"
Return the string variable

Code
=end

def century(number)
  string_century = ''

  if (number % 100) == 0
    string_century << (number / 100).to_s
  else
    string_century << ((number / 100) + 1).to_s
  end
  
  if [11, 12, 13].include?(string_century.to_i % 100)
    string_century << 'th'
  else
    case
      when string_century[-1] == '1'
        string_century << "st"
      when string_century[-1] == '2'
        string_century << "nd"
      when string_century[-1] == '3'
        string_century << "rd"
      else
        string_century << "th"
    end
  end

  string_century
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'