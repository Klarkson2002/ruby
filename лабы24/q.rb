
passenger = {
  ticket_number: 'РМ2010398 050298',
  first_name: 'Джозотаро',
  second_name: 'Куджо',
  last_name: 'Токийский',
  passport_number: '45 99 505281',
  departure_city: 'Саратов',
  destination_city: 'Япония'
}


puts "Билет № #{passenger[:ticket_number]}"
puts "Маршрут: #{passenger[:departure_city]} — #{passenger[:destination_city]}"
puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. " \
  "#{passenger[:last_name]}"
puts "Паспорт: #{passenger[:passport_number]}"