=begin

Problem:
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

Implicit requirements:
Middle of the diamond will have n stars ( * )
Diamind will be n lines long

Explicit requirement:
Input integer will always be odd

Examples:
diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

Data:
This method will take an integer as input and output a string.

Algorithm:
Define a method diamond that takes an odd integer as an argument. We can store the integer / 2 as a variable "spaces". We should also create a variable called "stars" that is initially assigned to 1. For the first few, we make a string with a number of spaces that matches the spaces variable, and then we add stars equal to the stars variable. After we output this line, we subtract 1 from the spaces variable and add 2 to the stars variable. This continues until the stars variable is equal to the integer. Then, we subtract 2 from the stars variable and add 1 to the spaces variable, and output that line. This 2nd half process continues until after the stars variable goes back to 1.


Code:
=end

def output_lines(spaces, stars)
  puts (' ' * spaces) + ('*' * stars)
end

def diamond(integer)
  spaces = integer / 2
  stars = 1

  until stars == integer
    output_lines(spaces, stars)
    spaces -= 1
    stars += 2
  end

  until stars < 1
    output_lines(spaces, stars)
    spaces += 1
    stars -= 2
  end
end

# diamond(1)
# diamond(3)  
diamond(9)