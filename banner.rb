# Write a method that will take a short line of text, and print it within a box.
# Example:
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# Pseudocode:
# Need to know the lengh of the string to fit it in the box.
# Lots of puts


def print_in_box(message)
  length = message.length
  print "+"
  (length+2).times do
    print "-"
  end
  puts "+"
  print "|"
  (length+2).times do
    print " "
  end
  puts "|"
  print "| "
  print message
  puts " |"
  print "|"
  (length+2).times do
    print " "
  end
  puts "|"
  print "+"
  (length+2).times do
    print "-"
  end
  puts "+"
end

  print_in_box("Can't believe coding this box got me hype.")
