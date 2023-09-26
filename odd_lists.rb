def oddities(array)
  array.select.with_index do |_, index|
    index.even?
  end
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]