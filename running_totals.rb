=begin
Problem:
Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

A running total is the sum of all values in a list up to and including the current element. Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at index 3 is 47 (14 + 11 + 7 + 15).

Input: An array of numbers
Output: An array with the same number of elements, and each element has the running total from the original Array.

Explicit requirements: 
Returns an Array with the same number of elements, and each element has the running total from the original Array.

Implicit requiremenets:
All array elements are positive integers
An empty array returns input returns an empty array as an output


Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

Data:
Inputs and outputs are arrays with integer elements
We will use arrays for this problem

Algorithm:
Create a new empty running_total array
Iterate through the input array
For each element, add it + the sum of the running_total array to the end of the running total array
return the running total array

Code:
=end

def running_total(array)
  running_total = []
  counter = 1

  array.each do
    running_total.push(array[0,counter].sum)
    counter += 1
  end

  running_total
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

=begin
Given solution:

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
=end