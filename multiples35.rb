=begin
Problem:
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Input: An integer
Output: the sum of all multiples of 3 and 5 between 1 and that integer

Explicit requirements: input is positive
Implicit requirements: no decimals

Examples:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

Data:
Input is integer, but we can use an array to compute the sum of multiples. The output will be a single integer.

Algorithm:
Create an empty array for multiples
For each number starting at 1, up to the input number:
If it is divisible by 3, add it to the multiples array
If it is not divisible by 3, but divisible by 5, add it to the multiples array
Once all the numbers have been checked, return the sum of the multiples array

Code:
=end

def multisum(integer)
  multiples = []

  1.upto(integer) do |n|
    if n % 3 == 0
      multiples.push(n)
    elsif n % 5 == 0
      multiples.push(n)
    else
      next
    end
  end

  multiples.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168