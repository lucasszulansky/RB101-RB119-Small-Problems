=begin
Problem: Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Implicit requirements: Vowels can be capitalized or lowercase

Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

Data:
Input is an array
Output is an array

Algorithm:
Create a constant array VOWELS with all vowels lowercased. Given an array of strings, split each word in the array into its character in a sub array. Iterate through the array and each sub array, comparing each character in its lowercased form to the vowels constant. If a character is a vowel, remove it. return the updated array.

Code:
=end

VOWELS = ['a', 'e', 'i', 'o', 'u' ]

# def remove_vowels(array)
#   array.each do |word|
#     word.chars.each do |letter|
#       word.delete!(letter) if VOWELS.include?(letter.downcase)
#     end
#   end
# end

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']