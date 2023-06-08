puts "Введите N"
number = gets.to_i

array = []
chislo = 1
chislo2 = 0

while chislo <= number do
    array << chislo
    chislo2 += chislo
    chislo += 1
end

puts array.to_s
puts "Сумма чисел: " + chislo2.to_s