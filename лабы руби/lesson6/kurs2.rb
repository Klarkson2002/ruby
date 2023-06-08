puts "Какая у вас на руках валюта?
1. Рубли
2. Доллары"

money = gets.chomp
puts "Сколько сейчас стоит 1 доллар?"
used = gets.to_f

if money == '1'
    puts "Сколько у вас рублей?"
    rus = gets.to_f

    use = (rus/used).round(2)

    puts "Ваши запасы на сегодня равны: " + "$" + use.to_s
else
    puts "Сколько у вас долларов?"
    use = gets.to_f

    rus = (use*used).round(2)

    puts "Ваши запасы на сегодня равны: " + rus.to_s + "руб."
    
end