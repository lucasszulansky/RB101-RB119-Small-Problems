=begin
Problem:
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

Data:
Array input & output

Algorithm:
Given an array, divide the size of the array by 2 and put those first half elements into their own array named 1st_half. Then put the 2nd half elements into their own array named 2nd_half. If the array size is odd, put the element at the middle index in the first array. Return the 1st_half and 2nd_half arrays nested into their own array.

Code:
=end

def halvsies(array)
  first_half = array.first(array.size/2)
  second_half = array.last(array.size/2)
  first_half << array[(array.size/2)] if array.size.odd?

  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]