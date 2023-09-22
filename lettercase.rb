=begin
Problem:
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one represents the number of characters that are uppercase letters, and one represents the number of characters that are neither.

Examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

Data:
Input is a string, the output is a hash

Algorithm:
Create a hash with key values uppercase, lowercase, and neither set to 0. Split the string passed in as an argument into characters. Iterate through the characters of the string. If a character is included in a range of lowercase characters, add 1 to the lowercase hash value. Do the same for uppercase characters. If the character didn't fit in either of those two categories, add 1 to the neither hash value. Return the hash

Code:
=end

def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |char|
    if ('a'..'z').include?(char)
      hash[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }