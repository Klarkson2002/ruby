# encoding: utf-8

file_path_questions = "./data/questions.txt"
file_path_answers = "./data/answers.txt"

if !File.exist?(file_path_questions)
    abort "Файл не найден"
end

if !File.exist?(file_path_answers)
    abort "Файл не найден"
end

f = File.new(file_path_questions, "r:UTF-8")
questions = f.readlines
f.close

f = File.new(file_path_answers, "r:UTF-8")
answers = f.readlines
f.close

count_question = 0
correct = 0

while count_question < questions.size
    puts "Вопрос номер #{count_question + 1}"
    puts questions[count_question]
    puts "Введите Ваш вариант ответа"
    user_answer = STDIN.gets.encode("UTF-8").chomp.downcase
    correct_answer = answers[count_question].chomp.downcase

    if user_answer == correct_answer
        puts "Правильный ответ!"
        correct += 1
    else
        puts "Ответ неверный! Правильный ответ: #{answers[count_question]}"
    end

    count_question += 1
end

puts
puts "Всего вопросов: #{questions.size}"
puts "Правильных ответов: #{correct}"