puts "Сколько сейчас стоит 1 доллор в рублях?"
use = gets.to_f

puts "Сколько у вас рублей?"
rus = gets.to_f

use = (rus/use).round(2)
puts "Ваши запасы равны: " + "$ " + use.to_s