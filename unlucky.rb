require 'Date'

MONTHS = (1..12).to_a

def friday_13th(year)
  fridays_the_13ths = 0

  MONTHS.each do |month|
    fridays_the_13ths += 1 if Date.new(year, month, 13).friday? 
  end

  fridays_the_13ths
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2