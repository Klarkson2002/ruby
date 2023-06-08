names = []

user_input = nil

while user_input != "" do
    user_input = gets.encode("UTF-8").chomp
    names << user_input
end

for item in names do
    puts "С нами " + item
    sleep 1

    if (item == "Егор")
        puts "Егор??? Кто такой Егор"
        sleep 1

        puts "Что это за поцан и где он живёт?"
        sleep 1

        puts "А вдург он не курит? А вдруг он не пьёт? А вдруг он не ДОТЕР?"
        sleep 1

        puts "А мы с такими рожами возьмем да и припрёмся к Егору... :)"
        break
    end
end
