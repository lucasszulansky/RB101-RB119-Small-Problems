=begin
Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Note that balanced pairs must each start with a (, not a ).

Examples:
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
balanced?('What ())(is() up') == false

Data:
String input, boolean output
Arrays will also be used.

Algorithm:
Create two count variables, one for each open and close parentheses Given a string, split that string into its characters. Iterate over the characters. Each time there is a parenthesis, add 1 to its respective count. If there are ever more closed parenthesis than open parenthesis, return false. Once the iteration is done, if the two counts are unequal, return false. If they are equal, return true.

Code:
=end

def balanced?(string)
  open_parentheses = 0
  closed_parenthesis = 0

  string.chars.each do |char|
    open_parentheses += 1 if char == '('
    closed_parenthesis +=1 if char == ')'

    return false if closed_parenthesis > open_parentheses
  end

  open_parentheses == closed_parenthesis
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false
