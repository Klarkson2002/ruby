current_path = File.dirname(__FILE__)
file_path = current_path + '/movies.txt'
puts "Сегодня, для просмотра фильма мы предлогаем вам..."
if File.exist?(file_path)
    f = File.new(file_path, "r:UTF-8")
    lines = f.readlines
    f.close
    puts lines.sample
    
    else  
        puts "Файл не найден"
    end