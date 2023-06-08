numbers = [1, 2, 3, 4, 5]
puts "Исходный массив: "
puts numbers.to_s

puts "Массив в обратном порядке: "
puts numbers.reverse.to_s

puts "Исходный массив (не изменился): "
puts numbers.to_s

numbers.reverse!

puts "Исходный массив (после изменения): "
puts numbers.to_s