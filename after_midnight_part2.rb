=begin
Problem: As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Data:
Strings as input
Will need to be converted to two integers (compare to a hash)
Then outputted as integers

Algorithm:
Given a string in 24 hour time format
Convert the hours and minutes in that string to their integer equivalents in an array by comparing each string character to a hash of integers.
Output the sum of those integers


Code:
=end


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def string_to_array_time(string)
  array =  string.split(':')
  
  array.map! do |string_num|
    string_num.to_i
  end

  array
end

def after_midnight(time)
  array = string_to_array_time(time)

  sum = (array[0] * MINUTES_PER_HOUR) + array[1]

end

def before_midnight(time)
  array = string_to_array_time(time)

  sum = -1 * (((array[0] * MINUTES_PER_HOUR) + array[1]) - MINUTES_PER_DAY)

end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

