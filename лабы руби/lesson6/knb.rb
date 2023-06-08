games = ["Камень", "Ножницы", "Бумага"]

computer = rand(3)

puts "Введите вариант: 0 - Камень, 1 - Ножницы, 2 - Бумага"

user = gets.to_i

puts "Вы выбрали: " + games[user]
puts "Компьютер выбрал: " + games[computer]

if user == computer
    puts "Ничья"
elsif user == 0 && computer == 1
    puts "Победили Вы"
elsif user == 1 && computer == 2
    puts "Победили Вы"
elsif user == 2 && computer == 0
    puts "Победили Вы"
else
    puts "Победил Компьютер"
end