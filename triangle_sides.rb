=begin

Problem:
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Example:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

Data:
Integer as input
Hash for Triangle definition, symbol for output

Algorithm:
Given three numbers, store those numbers in an array and sort them. Check if it's a valid triangle by seeing if the two shortest sides are greater than the length of the longest side, and making sure no lenghts are 0. If it's a valid triangle, return equilateral symbol if all sides are equal. Return scalene if no sizes are equal in length. Return scalene if neither of the above are true.

Code:
=end

def triangle(n1, n2, n3)
  sides = [n1, n2, n3].sort

  return :invalid if sides.first(2).sum < sides.last || sides.include?(0)

  if (sides[0] == sides[1]) && (sides[1] == sides[2]) && (sides[2] == sides[0])
    :equilateral
  elsif (sides[0] != sides[1]) && (sides[1] != sides[2]) && (sides[2] != sides[0])
    :scalene
  else
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid