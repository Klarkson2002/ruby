array = [1, 2, 3, 4, 5, 6, 7]
puts "Исходный массив:" + array.to_s
array1 = []
for item in array do
    array1.unshift(item)
end

puts "Новый массив, полученный из исходного:" + array1.to_s
