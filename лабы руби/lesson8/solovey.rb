temperature = ARGV[0]

if temperature == nil
    puts "Какая сейчас температура?"
    temperature = STDIN.gets.to_i
else
    temperature = temperature.to_i
end

season = ARGV[1]
 if season == nil
    puts "Какое время года?"
    season = STDIN.gets.to_i
 else
    season = season.to_i
 end

 if season == 1
    if temperature >= 15 && temperature <= 35
        puts "Скорее иди в парк, соловьи поют!"
    else
        puts "Сейчас соловьи молчат, греются или прохлождаются :)"
    end

else

    if temperature >=22 && temperature <= 35
        puts "Скорее иди в парк, соловьи поют!"
    else
        puts "Сейчас соловьи молчат, греются или прохлождаются :)"
    end
end
