#наибольшее число из введенных
puts "Введите 1-е число: "
num1 = gets.to_i
puts "Введите 2-е число: "
num2 = gets.to_i
if (num1 > num2)
    puts "Наибольшее число: " + num1.to_s
else
    puts "Наибольшее число: " + num2.to_s
end