number = rand(16)

puts 'загадано число от 0 до 15, отгадайте какое?'


proba = gets.chomp.to_i

if proba == number # 
  abort 'Ура, вы выиграли!' 
else

  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

 
  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end


proba = gets.chomp.to_i
if proba == number
  abort 'Ура, вы выиграли!'
else
  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end


proba = gets.chomp.to_i
if proba == number
  abort 'Ура, вы выиграли!'
else
  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end


puts 'В этот раз вам не повезло. Было загадано число ' + number.to_s