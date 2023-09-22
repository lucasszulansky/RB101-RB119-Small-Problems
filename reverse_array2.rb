=begin
Problem:
Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!.

Note: for the test case list = ['abc'], we want to reverse the elements in the array. The array only has one element, a String, but we're not reversing the String itself, so the reverse! method call should return ['abc'].

Explicit requirements: mutating method that affects the object passed in as an argument.

Examples:
See test cases below

Data:
Input is an array. Output is an array. Arrays only baby!

Algorithm:
Given an array with n elements, calculate the size of the array. If even, switch the first and last elements, then the second and second to last elements, until we have done switches equal to 1/2 the size of the array. If the array size is odd, do the sam,e but stop when the number of switches equals 1/2 of the size of the array minus 1.

Code:
=end

def reverse(array)
  array1 = array.clone
  first_index = 0
  last_index = -1

  if array1.size.even?
    ((array1.size)/2).times do 
      array1[first_index], array1[last_index] = array1[last_index], array1[first_index]
      first_index += 1
      last_index -= 1
    end
  else
    ((array1.size-1)/2).times do
      array1[first_index], array1[last_index] = array1[last_index], array1[first_index]
      first_index += 1
      last_index -= 1
    end
  end

  array1
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
