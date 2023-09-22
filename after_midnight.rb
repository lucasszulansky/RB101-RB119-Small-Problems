=begin
The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Explicit requirements:
- Input can be positive or negative
- Method should work with any integer input

Implicit requirements:
- since there are 1,440 minutes in each 24 hour period, minutes will need to "loop" over midnight if the integer input exceeds that number

Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Data:
Input is integer, which will be converted to hours & minutes integer. Arrays will be used as well.

Algorithm:
Given an integer

If that integer is between 0 and 1440
Divmod that integer by 60 to get it's quotient and remainder in an array in the integer format [hours, minutes]. Convert that array into a string in HH:MM format.

If the integer is greater than 1440
Divmod that integer by 1440 to get its remainder.
Divmod that remainder by 60 to get an array in the integer format [hours, minutes]. Convert that array into a string in HH:MM format.

If the integer is less than 0 but greater than -1440
Divmod that integer by 60 to get it's quotient and remainder in an array. Then, subtract the quotient from 24 to get an array in the integer format [hours, minutes]. Convert that array into a string in HH:MM format.

If that integer is less than -1440
Divmod by 1440, , then take remainder and divmod that by 60 to get an array in the integer format [hours, minutes]. Convert that array into a string in HH:MM format.

Code:
=end

def array_time_to_string(array)

  case 
  when array[0] < 10 then array[0] = "0#{array[0]}"
  when array[0] >= 10 then array[0] = "#{array[0]}"
  end

  case 
  when array[1] < 10 then array[1] = "0#{array[1]}"
  when array[1] >= 10 then array[1] = "#{array[1]}"
  end

  array.join(':')
end

def time_of_day(integer)
  case
  when (integer >= 0) && (integer < 1440)
    array_time_to_string(integer.divmod(60))
  
  when integer >= 1440
    big_positive_integer = integer.divmod(1440)
    array_time_to_string(big_positive_integer[1].divmod(60))
  
  when (integer < 0) && (integer >= -1440)
    negative_integer = integer.divmod(60)
    negative_integer[0] = (24 + negative_integer[0])
    #negative_integer[1] = (60 + negative_integer[1])
    array_time_to_string(negative_integer)
  
  when integer < -1440
    big_negative_integer = integer.divmod(1440)
    array_time_to_string(big_negative_integer[1].divmod(60))
  end

end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(-1440) == "00:00"



