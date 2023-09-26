=begin
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

Examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

Data: Integer input, integer output. Array to be used for determining double numbers.

Algorithm:
Creating a method for determining if a number is a double number: Given an integer, convert that number into an array of its digits. If the size of that array is odd, it is not a double number. If it is even, check to see if the first half of the array is equal to the 2nd half of the array. If true, it is a double number.

Twice method: given a number, check to see if it is a double number. If it is, return that number. If not, return double the number.

Code:
=end

def double_number?(number)
  number_array = number.to_s.chars
  half = number_array.size / 2

  return false if number_array.size.odd?
  number_array.first(half) == number_array.last(half)
end

def twice(number)
  double_number?(number) ? number : number * 2
end


puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10