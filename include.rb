=begin
Problem:
Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

Implicit requirements: Search value may be an integer or nil.

Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

Data: Input is an array and a value that is a search value.
Output is a boolean

Algorithm:
Given an array and a search value, iterate through the array. If an element matches the search value, return true. If not, return false.

Code:
=end

def include?(array, search_value)
  array.each do |element|
    return true if element == search_value
  end

  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false