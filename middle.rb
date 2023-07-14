# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# Examples:
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# Pseudocode: Method that takes a string. Validate that the string isn't empty. Convert string to array. If the array size is odd, return middle element. If the array size is even, return middle two elemenets.

def center_of(string)
  puts "Please enter a string" if string.size == 0
  array = string.split(//)
  middle = ""
    if array.size.odd?
      middle = array[(array.size) / 2]
    else
      middle = (array[(array.size - 1) / 2]) << (array[(array.size + 1) / 2])
    end
end


# Launch solution:
# def center_of(string)
#   center_index = string.size / 2
#   if string.size.odd?
#     string[center_index]
#   else
#     string[center_index - 1, 2]
#   end
# end

# puts center_of('launchschool')