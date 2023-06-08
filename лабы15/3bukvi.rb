if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end


current_path = File.dirname(__FILE__)
file_path = current_path + "/file.txt"

if File.exist?(file_path) #=~ /^\S{3}$/
    f = File.new(file_path, "r:UTF-8")
    lines = f.readlines
    f.close
    puts lines.sample =~ /^\S{3}$/
else  
    puts "Файл не найден"
end