puts 'Сколько сейчас стоит 1 доллар в рубялях?'
a = gets.to_f
puts 'Сколько у вас рублей?'
b = gets.to_f
average = (b / a).round(2)
puts 'Ваши запасы равны: $' + average.to_s