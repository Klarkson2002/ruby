cars = [
    'Rolls Roys',
    'BMW',
    'Mercedes-Benz',
    'Audi',
    'Ferrari',
    'Nissan',
    'Toyota',
    'Bugatti',
    'Lamborghini',
    'Mazda'
]

puts 'У нас всего ' + cars.size.to_s + ' машин. Вам какую?'
number = gets.to_i - 1

if number >= 0 && number < cars.size
    print 'Поздравляю, Вы получили: '
    puts cars [number]
else
    puts 'Извините, машины с таким номером у нас нет :('
end
