puts "Исходный массив: "
number = [1, 2, 3, 4, 5, 6, 7]
puts number.to_s

reverse_numbers = []

for item in number do
    puts reverse_numbers.unshift(item)
end

puts "Новый массив, полученый из исходного: "
puts reverse_numbers.to_s