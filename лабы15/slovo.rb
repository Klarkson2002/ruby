if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end

end
puts "Здравствуйте, сегодня мы представляем вам игру Угадай слово, мы будем давать слова с одной или несколькими спрятанными буквами, вам надо будет отгодать целое слово"
sleep 2
puts "Для начала мы загадаем вам слово ДЖОТ*РО, введите букву в консоль"
hum = STDIN.gets.encode("UTF-8").chomp
if hum == "А"
    puts "Да, мы загадали слово ДЖОТАРО"
else  
    puts "Нет, мы загадали слово ДЖОТАРО"
end
sleep 2
puts "Продолжаем нашу игру, мы загадали слово ДЖО*ЖО, введите букву в консоль"
hum1 = STDIN.gets.encode("UTF-8").chomp
if hum1 == "Д"
    puts "Да, мы загадали слово ДЖОДЖО"
else
    puts "Нет, мы загадали слово ДЖОДЖО"
end
sleep 2
puts "Последний раунд нашей игры, мы загадали слово СП*ДВАГОН, введите букву в консоль"
hum2 = STDIN.gets.encode("UTF-8").chomp
if hum2 == "И"
    puts "Да, мы загадали слово СПИДВАГОН"
else
    puts "Нет, мы загадали слово СПИДВАГОН"
end
sleep 1
puts "Спасибо за игру!!!"