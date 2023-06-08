array = []

puts "Введите N"
N = gets.to_i

index = 1
sum = 0

while index <= N do
    array << index
    sum += index
    index += 1
end

puts array.to_s
puts "Сумма чисел: " + sum.to_s