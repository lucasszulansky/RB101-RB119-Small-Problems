=begin
Problem:
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Input: Integer
Output: array of which lights are on

Examples:
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

Data:
Input is 

Algorithm:
Create a method called light switch that switches the position of a light (from off to on, or on to off).

Given an integer n, create an array variable lights. Set lights equal to an array with n number of 'off' elements.

For each number 1 up to n, iterate through lights. For each iteration, switch each light that is a multiple of n. Continue until we have gone through n repitions.

Finally, iterate once more through the array. Create a new array with a number for every index for each light that's on in the lights array, and return that array.

Code:
=end

def light_switch(element)
  if element == 'off'
    'on'
  else
    'off'
  end
end

def lights(number)
  lights = []
  number.times do
    lights << 'off'
  end
  
  1.upto(number) do |num|
    lights.each_with_index do |switch, index|
      if num % (index + 1) == 0
        lights[num-1] = light_switch(lights[num-1])
      end
    end
  end
  
  answer = []
  lights.each_with_index do |switch, index|
    answer << (index + 1) if switch == 'on'
  end
  answer
end

p lights(5) == [1,4]
p lights(10) == [1,4,9]
p lights(1000)
