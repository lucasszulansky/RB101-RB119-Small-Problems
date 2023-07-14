# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:
# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# Inputs: positive integer.
# Outputs: triangle.

# Pseudocode: Create a variable, stars, equal to zero. Create another variable, spaces, equal the length of the integer. Iterating n times, print the spaces, then stars, then -1 from each of them.

def triangle(n)
  spaces = n
  stars = 0
  while spaces >= 0
    spaces.times { |x| print " "}
    stars.times { |x| print "*"}
    spaces -= 1
    stars += 1
    puts
  end
end

triangle(10)

# Solution
# def triangle(num)
#   spaces = num - 1
#   stars = 1

#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end