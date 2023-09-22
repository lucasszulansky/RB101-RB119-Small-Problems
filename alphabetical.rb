=begin
Problem:
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

Data:
Input is an array of integers between 0 and 19.
Hash of each integer to its corresponding english word.
The output is an array of those integers sorted based on the english words for each number.

Algorithm:
Given an array of integers betwen 0 and 19, create a hash with each key corresponding to an integer and each value being the english word for that integer. Next, create an array from the english word values of that hash, and sort it. Then, return an array of those sorted english words converted back to their integer values.

Code:
=end

NUMBERS = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)

# def alphabetic_number_sort(array)
#   hash = {}

#   array.each_with_index do |num, index|
#     hash[num] = NUMBERS[index]
#   end

#   word_array = hash.values.sort

#   word_array.map do |word|
#     hash.key(word)
#   end

# end

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBERS[number]}
end

p alphabetic_number_sort((0..19).to_a)
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]