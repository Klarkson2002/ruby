puts "Загадано число от 0 до 15, отгадайте какое?"

number = rand(16)

chislo = gets.chomp.to_i

if chislo == number
    abort "Ура, вы выиграли!"

else
    
    if (chislo - number).abs < 3
        puts "Тепло"
    else
        puts "Холодно"
    end

    if chislo > number
        puts "нужно меньше"
    else
        puts "нужно больше"
    end

end

chislo = gets.chomp.to_i
if chislo == number
    abort "Ура, вы выиграли!"

else
    
    if (chislo - number).abs < 3
        puts "Тепло"
    else
        puts "Холодно"
    end

    if chislo > number
        puts "нужно меньше"
    else
        puts "нужно больше"
    end

end

chislo = gets.chomp.to_i
if chislo == number
    abort "Ура, вы выиграли!"

else
    
    if (chislo - number).abs < 3
        puts "Тепло"
    else
        puts "Холодно"
    end

    if chislo > number
        puts "нужно меньше"
    else
        puts "нужно больше"
    end

end

puts "Значит ни в этой жизни( Это было число: " + number.to_s