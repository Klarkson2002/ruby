temperature = ARGV[0]

    if temperature == nil
        puts "Какая сейчас температура"
        temperature = STDIN.gets.to_i
    else
        temperature = temperature.to_i
    end

season = ARGV[1]

    if season == nil
        puts "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)"
        season = STDIN.gets.to_i
    else
        season = season.to_i
    end

    if season == 1
        if temperature >= 15 && temperature <= 35
            puts "Скорее идите в парк, соловьи cпоют для тебя"
        else
            puts "Увы, даже летом для соловьев сейчас неподходящие условия"
        end
    else
        if temperature >= 22 && temperature <= 30
            puts "Скорее в парк! Там поют соловьи!"
        else 
            puts "Сейчас соловьи молчат, греются или прохлождаются :)"
        end
    end 
