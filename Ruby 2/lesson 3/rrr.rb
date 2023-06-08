avto = [
    'Nissan',
    'Lexus',
    'BMW',
    'Toyota',
    'Buggati',
    'Mazda',
    'Volvo',
    'Ferrari'
]
puts 'У нас всего ' +  avto.size.to_s + ' машин. Вам какую?'
number = gets.to_i - 1

if number >= 0 && number < avto.size
    puts 'Поздравляем, вы получили:'
    puts avto [number]
else

    puts 'Извините, машины с таким номером у нас :('
end 
