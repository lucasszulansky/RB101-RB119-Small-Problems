=begin
Problem:
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

Implicit requirements:
Switches that are toggled are multiples of their position in the array.
The first switch will always be on.

Input: a method with one parameter, the total number of switches.
Output: An array representing the position of lights that are still on.

Examples:
switches(3) == [1]
switches(5) == [1, 4]
switches(10) == [1, 4, 9]

Data: We will use arrays with length n to represent the switches. the output will be an array of all switches that are on.

Algorithm:
Build an array named switches with length n. Each element will be a string 'on' to represent a light switch that is on. Set a variable starting_element to 1. Starting with the element at index 1 in switches, iterate over the array. Switch the position of all lights that are a multiple of the index of the starting element + 1 (so for the 2nd element, it will be lights in positions 2, 4, 6, etc). Switching a light means changing it's value from 'on' to 'off' if it is currently 'on', and from 'off' to 'on' if it is currently 'off'. Once that iteration is complete, add one to starting element. Do the same starting with the element at index 2, which will turn all switches that are multiples of 3. Continue until the variable starting_element is equal to the size of the switches array - 1. Iterate over the switches array and build out a new answer array - if a switch is on, put its index + 1 into the answer array. Return the answer array.

Code:
=end

# initialize the lights array
def initialize_lights(number)
  lights = []
  number.times {lights << 'off'}
  lights
end

# returns an array of light numbers that are on
def on_lights(lights)
  on_lights = []

  lights.each_with_index do |state, index|
    on_lights << (index + 1) if state == 'on'
  end

  on_lights
end

# toggles a light
def toggle_light(light)
  light == 'off' ? 'on' : 'off'
end

def toggle_every_nth_light!(lights, nth)
  lights.map!.with_index do |light, index|
    if (index + 1) % nth == 0
      toggle_light(lights[index])
    else
      light
    end
  end
end

def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)

  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light!(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(3) #== [1]
p toggle_lights(5) #== [1, 4]
p toggle_lights(10) == [1, 4, 9]
p toggle_lights(1000)