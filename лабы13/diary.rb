if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end
puts "Приветик, я твой личный негр. Готов рассказать свои грязные секреты? Я их выложу в инстаграм, не переживай.(это я слил видео Дзюбы)"
current_path = File.dirname(__FILE__)
file_path = current_path + "diary.txt"
line = nil
all_lines=[]
file = File.new("./diary.txt", "a:UTF-8")
time = Time.now 
file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")

while line != "я кончил" do
    line = STDIN.gets.encode("UTF-8").chomp
    all_lines << line 
end
separator = "__________________________________________"
all_lines.pop
file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")
file .print("\r" + time_string = "\n\r")

for item in all_lines do
    file.puts(item)
end

file.puts(separator)
file.close
puts "Всё, я сохранил твою запись в файле #{file_name}.txt"