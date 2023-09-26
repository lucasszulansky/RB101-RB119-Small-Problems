=begin

Problem:
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Implicit requirements:
Input can have 1 element
Sum of integers

Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

Data:
Input is an array, output is an integer

Algorithm:
Given an input array, create a loop. The loop calculates the sum of the  element at index 0. Save that sum to a variable named sum. Then, increase the length of the elements summed to 2. Save sum to variable. Continue until the length of the elements summed equals the size of the array. Return the sum.

Code:
=end

def sum_of_sums(array)
  sum = 0
  counter = 1

  until counter == array.size + 1
    sum += array[0,counter].sum
    counter += 1
  end

  sum
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
