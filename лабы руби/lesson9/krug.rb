def circle_square(radius)
    return 3,14 * radius * radius
end

puts "Введите радиус круга: "
radius = gets.to_f

puts "Площадь круга: " + circle_square(radius).to_s

puts "Введите радиус второго круга: "
radius = gets.to_f

puts "Площадь второго круга: " + circle_square(radius).to_s