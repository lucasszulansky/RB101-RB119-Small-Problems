=begin
Problem:
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Examples:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Data:
Two arrays as arguments, outputting a single array

Algorithm:
Given two arrays, create a new array. Iterate through the first array. For each element in the first array, add that element to the new array, and also the element in the other array at the same index.

Code:
=end

def interleave(array1, array2)
  combined_array = []
  
  array1.each_with_index do |element, index|
    combined_array << element
    combined_array << array2[index]
  end

  combined_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
