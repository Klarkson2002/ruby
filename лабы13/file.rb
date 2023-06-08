
file = File.new("./file.txt", "a:UTF-8")
file.print("Строка для записи в файл\n")
file.close
file = File.new("./file.txt", "a:UTF-8")
file.print("Ещё одна строка\n")
file.close