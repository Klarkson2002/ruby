encoding utf-8


require_relative 'person'


hmyr = Person.new('Гаврила', 'Петрович')
kosoy = Person.new('Фёдор', 'Петрович')
alibaba = Person.new('Василий', 'Алибабаевич')


puts 'У нас есть три человека'
puts hmyr.full_name
puts kosoy.full_name
puts alibaba.full_name
