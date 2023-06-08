def stars(number)
    result = ""

    while result.length < number do
        result += "*"
    end

    puts result
end

puts "Сколько вам звезд на погоны?"
stars = gets.to_i

puts "Вот ваши звезды: "
stars(stars)