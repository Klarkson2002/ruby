words = ["ландышь", "роза", "самолет", "знание ", "арбуз", "еда", "здоровье", "состояние"]


word = words.sample


turns = 5


guesses = []
word_array = word.split("")


word_array.each_with_index do |letter, index|
  word_array[index] = "_"
end


loop do
  puts "\nУ вас осталось #{turns} попыток."
  puts "Слово: #{word_array.join(" ")}"

  print "Введите букву: "
  guess = gets.chomp.downcase

  
  if word.include?(guess)
    word_array.each_with_index do |letter, index|
      if word[index] == guess
        word_array[index] = guess
      end
    end
    puts "Правильно!"
  else
    puts "Не правильно"
    turns -= 1
  end

 
  guesses << guess unless guesses.include?(guess)


  if word_array.none? { |letter| letter == "_" }
    puts "Вы угадали слово! Поздравляем!"
    break
  end

  
  if turns == 0
    puts "\nВы проиграли! Загаданное слово было '#{word}'."
    break
  end
end