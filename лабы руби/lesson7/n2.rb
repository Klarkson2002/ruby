puts "Какой длины будет массив случайных чисел?"

array = []
number = gets.to_i

chislo = 0

while chislo < number do
    array << rand(100)
    chislo += 1
end

puts array.to_s

max = 0

for item in array do
    if item > max
        max = item
    end
end

puts "Самое большое число: "
puts max.to_s