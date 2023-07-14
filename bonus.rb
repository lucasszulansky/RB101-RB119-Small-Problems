# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# Examples:
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# The tests above should print true.

# Inputs: two arguments - salary, & boolean
# Outputs: bonus amount for given salary

def calculate_bonus (salary, boolean)
  bonus = 0
  if boolean
    bonus = (salary / 2)
  end
  bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Solution:
# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end