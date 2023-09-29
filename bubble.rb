=begin
Problem:
Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted.

Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

Implicit requirements:
Input can be an array of any size, and any type.

Explicit requirements: we will be mutating the array

Examples:
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

Data:
Input is an array. 

Algorithm:
Create a variable 'swap_counter' to keep track of the number of swaps we have done.
Given an array, create a loop. For each iteration of the loop, set the swap counter to 0 and iterate through the entire array. If the element at the current index is greater than the element at the next index, swap them and add 1 to the swap_counter variable. If we finish iterating through the array without making any swaps, return the (now sorted) array.

Code:
=end

def bubble_sort!(array)
  loop do
    swap_counter = 0
    
    array.each_with_index do |element, index|
      next if index == array.size - 1

      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swap_counter += 1
      end
    end
      
    break if swap_counter == 0
  end

  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)