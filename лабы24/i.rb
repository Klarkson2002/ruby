
passengers = [
  {
    ticket_number: 'РМ2010398 050298',
    first_name: 'Какаши',
    second_name: 'Хатаке',
    last_name: 'Похуистов',
    passport_number: '45 99 505281',
    departure_city: 'Москва',
    destination_city: 'Казахстан'
  },
  {
    ticket_number: 'РМ2010399 050298',
    first_name: 'Саске',
    second_name: 'Учиха',
    last_name: 'Шаринган',
    passport_number: '46 01 192872',
    departure_city: 'Япония',
    destination_city: 'Саратов'
  },
  {
    ticket_number: 'РМ2010399 050298',
    first_name: 'Наруто',
    second_name: 'Узумаки',
    last_name: 'Дибилович',
    passport_number: '47 33 912876',
    departure_city: 'Саратов',
    destination_city: 'Токио'
  }
]

puts 'Пассажиры поезда Москва — Петушки'
puts


passengers.each_with_index do |passenger, number|
  puts "* * * Место № #{number + 1} * * *"
  puts "Билет № #{passenger[:ticket_number]}"
  puts "Маршрут: #{passenger[:departure_city]} -> " \
    "#{passenger[:destination_city]}"
  puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. " \
    "#{passenger[:last_name]}"
  puts "Паспорт: #{passenger[:passport_number]}"
  puts
end