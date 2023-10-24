=begin
Problem:

Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

Input: floating point number that represents an angle between 0 and 360 degrees
Output: a formatted string that represents that angle in degrees, minutes, and seconds.

Explicit requirements: Output string must be formatted. Input of 360 can be output in two different ways.
Implicit requirements: No negative input.

Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Data:
Input is a float. Output will be a formatted string. We will use arrays to store information in the method.

To convert a decimal angle to degrees, minutes and seconds:
1) The integer portion is degrees
2) Multiply the decimal portion of the number by 60 to get the minutes (will be the integer portion of the result)
3) Multiply the remaining decimal portion by 60 to get the seconds

Algorithm:
Given a float input, convert it to a string and split it along the decimal. The two digits to the left of the decimal should be assigned to a variable degrees. The digits to the right of the decimal should be converted back to a float and multiplied by 60 to get the minutes. If the minutes is a float with decimal, split it again and assign the number portion to a minutes variable. Multiply the decimal portion again by 60 to get the seconds - save these to a seconds variable (rounded to 2 places).

Format the answer according to the requirements and output the string.

Code:
=end

DEGREE = "\xC2\xB0"

MINUTES_IN_A_DEGREE = 60
SECONDS_IN_A_MINUTE = 60

def dms(float)
  array = float.to_s.split('.')
  degrees = array[0]
  minutes = '0'
  seconds = '0'

  unless array.size == 1
    array = (array[1].prepend('.').to_f * MINUTES_IN_A_DEGREE).to_s.split('.')
    minutes = array[0]
  end

  unless array.size == 1
    array = (array[1].prepend('.').to_f * SECONDS_IN_A_MINUTE).to_s.split('.')
    seconds = array[0]
  end

  minutes.prepend('0') if minutes.size < 2
  seconds.prepend('0') if seconds.size < 2
  
  %(#{degrees}#{DEGREE}#{minutes}'#{seconds}")
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")