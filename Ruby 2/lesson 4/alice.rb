names = []
dialog_imput = nil

while dialog_imput != "" do
    dialog_imput = gets.encode("UTF-8").chomp
    names << dialog_imput
end

for item in names do
    puts "С нами " + item
    sleep 1

    if (item == "Андрей")
        puts "Андрей??? Кто такой Андрей?"
        sleep 1
        puts "Что это за поцык и где он обитает?"
        sleep 1
        puts "А вдруг он не покуривает? А вдруг он не бухает?"
        sleep 1
        puts "А мы с такими мордами возьмем да и припрёмся к Андрею... :-)" 
        break 
    end
end