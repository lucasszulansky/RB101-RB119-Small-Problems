=begin
Problem:
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Example:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

Data:
String input, string output

Algorithm:
Given a string, split that string into an array of its characters. Iterate through that array. If the index of the element being iterated on is even, capitalize that letter. If not, lowercase the letter. Join the array and return it.

Code:
=end

def staggered_case(string)
  index = 0
  new_string_array = []

  string.chars.each do |character|

    if character.upcase == character.downcase
      new_string_array << character
    elsif index.even?
      new_string_array << character.capitalize
      index += 1
    else
      new_string_array << character.downcase
      index += 1
    end
  end
  
  new_string_array.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'