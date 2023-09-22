=begin
Problem:
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

Data:
Input is an array, and the output is an array.

Algorithm:
Given two arrays, iterate through the first array. For each element in the first array, iterate through the second array, multiplying each element together. Save each answer to a new answer array, and return it.

Code:
=end

def multiply_all_pairs(array1, array2)
  answer = []

  array1.each do |num1|
    array2.each do |num2|
      answer << num1 * num2
    end
  end

  answer.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]