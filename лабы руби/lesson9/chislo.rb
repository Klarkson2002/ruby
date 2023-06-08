def check_number(guess, number)
    if guess == number
        puts "Ура, вы выиграли!"
        exit
    end

    if guess > number
        puts "Нужно меньше"
    else
        puts "Нужно больше"
    end

    if (guess - number).abs < 3
        puts "Тепло"
    else
        puts "Холодно"
    end
end

number = rand(17)

puts "Загадано число от 0 до 16. Угадайте какое:)"

guess = gets.to_i
check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

puts "Не повезло:( Это было число: " + number.to_s