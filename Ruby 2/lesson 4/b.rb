array = []

puts "Введите N"
N = gets.to_i

index = 1
gum = 0

while index <= N do
    array << index
    gum += index
    index += 1
end


puts array.to_s
puts "Сумма чисел " + gum.to_s

