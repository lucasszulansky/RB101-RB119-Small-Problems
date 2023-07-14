# inputs: length and width of a room in meters
# outputs: area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

area_meters = length * width
area_sqft = area_meters * 10.7639

puts "The area of the room is #{area_meters} square meters (or #{area_sqft.round(2)} square feet)."
