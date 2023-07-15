# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# Input: Please write word or multiple words: walk, don't run
# Output: There are 13 characters in "walk, don't run".

puts "Please write word or multiple words: "
string = gets.chomp
count = string.delete(" ").size

puts "There are #{count} characters in #{string}."