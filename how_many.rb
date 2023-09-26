=begin
Problem:
Write a method that counts the number of occurrences of each element in a given array.

Examples:
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

{car => 4
truck => 3
SUV => 1
motorcycle => 2}

Data: Input is an array, output is a hash.

Algorithm:
Create an empty hash object. Iterate through the input array. For each element in the object, check if the hash contains that element as a key. If it doesn't, add that element to the has with a value of 1. If the hash does contain that element as a key, increate the value by 1. Return the hash.

Code:
=end

def count_occurrences(array)
  hash = {}

  array.each do |element|
    if hash.has_key?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end

  hash
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)
