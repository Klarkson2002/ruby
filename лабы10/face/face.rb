current_path = File.dirname(__FILE__)
file_foreheads = current_path + "/data/foreheads.txt" #+ "/eyes.txt" + "/noses.txt" + "/mouths.txt"
#file_eyes = current_path + "/eyes.txt"
#file_noses = current_path + "/noses.txt"
#file_mouths = current_path + "/mouths.txt"

if File.exist?(file_foreheads)
    f = File.new(file_foreheads, "r:UTF-8")
    lines = f.readlines
    f.close
    puts lines.sample
else  
    puts "Файл не найден"
end
#current_path = File.dirname(__FILE__)
file_eyes = current_path + "/data/eyes.txt"
if File.exist?(file_eyes)
    f = File.new(file_eyes, "r:UTF-8")
    lines = f.readlines
    f.close
    puts lines.sample
else  
    puts "Файл не найден"
end
##current_path = File.dirname(__FILE__)
file_noses = current_path + "/data/noses.txt"
if File.exist?(file_noses)
    f = File.new(file_noses, "r:UTF-8")
    lines = f.readlines
    f.close
    puts lines.sample
else  
    puts "Файл не найден"
end
#current_path = File.dirname(__FILE__)
file_mouths = current_path + "/data/mouths.txt"
if File.exist?(file_mouths)
    f = File.new(file_mouths, "r:UTF-8")
    lines = f.readlines
    f.close
    puts lines.sample
else  
    puts "Файл не найден"
end