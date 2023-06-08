puts "Введите вариант: 0-камень,1-ножницы,2-бумага "
variant = gets.to_i
if variant == 0
    puts "Вы выбрали: камень"
end
if variant == 1
    puts "Вы выбрали: ножницы"
end
if variant == 2
    puts "Вы выбрали: бумага"
end
comp = rand(3)
if comp == 0
    puts "Компьютер выбрал: камень"
    if variant == 2
        puts "Победил игрок"
    else
        puts "Победил компьютер"
    end
end
if comp == 1
    puts "Компьютер выбрал: ножницы"
    if variant == 0
        puts "Победил игрок"
    else
        puts "Победил компьютер"
    end
end
if comp == 2
    puts "Компьютер выбрал: бумага"
    if variant == 1
        puts "Победил игрок"
    else
        puts "Победил компьютер"
    end
end
