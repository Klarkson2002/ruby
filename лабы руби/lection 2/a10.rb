puts 'Какая у вас на руках валюта?
1. Рубли
2. Доллары'
i = gets.chomp

puts 'Сколько сейчас стоит 1 доллар?'
a = gets.to_f

if i == '1'
    puts 'Сколько у вас рублей?'
    b = gets.to_f
    c = (b / a).round(2)
    puts 'Ваши запасы равны: $ ' + c.to_s
else 
    puts 'Сколько у вас долларов?'
b = gets.to_f
y = (b * a).round(2)
puts 'Ваши запасы на сегодня равны: ' + y.to_s + 'руб' 
end