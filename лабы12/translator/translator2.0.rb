if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

require "cyrillizer"
puts "С какого языка на какой вы хотите перевести слово
1. С русского на латиницу
2. С латинице на русский"
choice = gets.chomp
if choice == "1"
    puts "Какое слово хочешь перевести в латиницу"
    hum = STDIN.gets
    puts hum.to_lat
elsif choice == "2"
    puts "Какое слово хочешь перевести в русский"
    hum = STDIN.gets
    puts hum.to_cyr
else
    puts "Так мы не можем"
end
#Translit.convert("Птица")

