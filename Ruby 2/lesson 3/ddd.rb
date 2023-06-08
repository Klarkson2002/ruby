puts "Какая у вас на руках валюта?"
val = gets.to_i
if val == 1
    puts "Сколько сейчас стоит 1 доллар в рублях?"
    dollar = gets.to_f
    puts "Сколько у вас рублей?"
    rub = gets.to_f 
    otvet = rub / dollar
    puts "Ваши запасы равны: ",otvet.round(2)
else
    puts "Сколько сейчас стоит 1 доллар в рублях?"
    dollar = gets.to_f
    puts "Сколько у вас долларов?"
    dol = gets.to_f 
    otvet = dol * dollar
    puts "Ваши запасы равны: ",otvet,+"руб"
end