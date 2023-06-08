right_num = rand(16)
puts "Угадайте число от 0-16: "
num = gets.chomp.to_i
if num == right_num
    abort "Ура, вы выйграли"
else
if num > right_num
    puts "Нужно меньше"
else
    puts "Нужно больше"
end
if (num - right_num).abs < 3
    puts "Тепло"
else
    puts "Холодно"
end
end
num = gets.chomp.to_i
if num == right_num
    abort "Ура, вы выйграли"
else
if num > right_num
    puts "Нужно меньше"
else
    puts "Нужно больше"
end
if (num - right_num).abs < 3
    puts "Теплo"
else
    puts "Холодно"
end
end
num = gets.chomp.to_i
if num == right_num
    abort "Ура, вы выйграли"
else
if num > right_num
    puts "Нужно меньше"
else
    puts "Нужно больше"
end

if (num - right_num).abs < 3
    puts "Тепло"
else
    puts "Холодно"
end
end
puts "Не повезло. Было загадано " + right_num.to_s