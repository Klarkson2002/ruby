def say_hi(name)
    puts "Привет, #{name}"
end
say_hi "Миша"

def shout_and_wait message
    puts message
    sleep 1
end
shout_and_wait "Поехали"
shout_and_wait "Первый километр"
shout_and_wait "Второй километр"
shout_and_wait "Третий километр"
puts "Приехали!"
gets


def sum a, b
    return a + b
end
number = sum(35, 24)
puts number