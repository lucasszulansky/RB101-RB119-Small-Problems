=begin
Problem:
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Explicit requirements: input string will always contain at least one character
Implicit requirements: spaces are counted

Examples:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

Data:
Input is a string, output is a hash

Algorithm:
Create constants for all uppercase letters and all lowercase letters.
Create a hash named percentages with keys for lowercase, uppercase, and neither characters, all with values of 0.
Given a string, split that string into an array of its characters. Count the total number of characters and save that as a variable total_chars. Then, iterate over the characters. If a character is lower case (by comparing it against the lower case constant), add 1 to the proper hash key value. If a character is upper case, add 1 to its corresponding hash key value. If a character is neither, add 1 to the neither hash key value. Once iteration is done, calculate the average for each value by converting it to a float and dividing it by the count of the characters in the string, and update the corresponding hash value. Return the hash.

Code:
=end

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_percentages(string)
  percentages = { lowercase: 0, uppercase: 0, neither: 0}
  chars = string.chars
  total_chars = chars.count
  
  chars.each do |char|
    if LOWERCASE.include?(char)
      percentages[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      percentages[:uppercase] += 1
    else
      percentages[:neither] += 1
    end
  end

  percentages[:lowercase] = (percentages[:lowercase].to_f / total_chars) * 100
  percentages[:uppercase] = (percentages[:uppercase].to_f / total_chars) * 100
  percentages[:neither] = (percentages[:neither].to_f / total_chars) * 100

  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }