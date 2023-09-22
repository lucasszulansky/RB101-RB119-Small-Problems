=begin
Problem:
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

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

def reverse!(array)
  first_index = 0
  last_index = -1

  if array.size.even?
    ((array.size)/2).times do 
      array[first_index], array[last_index] = array[last_index], array[first_index]
      first_index += 1
      last_index -= 1
    end
  else
    ((array.size-1)/2).times do
      array[first_index], array[last_index] = array[last_index], array[first_index]
      first_index += 1
      last_index -= 1
    end
  end

  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

