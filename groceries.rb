def buy_fruit(array)
  answer = []

  array.each do |arr|
    arr[1].times { answer << arr[0]}
  end

  answer
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]