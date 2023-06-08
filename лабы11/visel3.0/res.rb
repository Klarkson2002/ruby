class Res
    def initialize
        @statusim = []
        currentpath = File.dirname(__FILE__)
        counter = 0
        while counter <= 7 do
            filename = currentpath + "./image/#{counter}.txt"
            if  File.exist?(filename)
                f = File.new(filename, "r:UTF-8")
                @statusim.push f.read
                f.close
            else
                @statusim.push "\n [Изображение отсутствует] \n"
            end
            counter += 1
        end
    end
    def prints(game)
      cls
        puts "\nСлово: #{get_word_for_print(game.letters, game.goodl)}"
        puts "Ошибки: #{game.badl.join(", ").to_s}"
        printv(game.errors)
        if game.status == -1
            puts "Тебя повесили лошара  ахахахахахаххаххахаххаххахахаххахахаххахахахаххахахахахахаххахаххахахаххахахахаххахахах"
            puts "Загаданное слово было: " + game.letters.join("")
        elsif game.status == 1
            puts "ПОЗДРАВЛЯЕМ, вас повесят завтра!это был пран и вас повесили ахаахахаахахаххахахахха"
        else
            puts "У вас осталось ошибок: " + (7 - game.errors).to_s
        end
    end
    def cls 
        system = "clear" || system = "cls"
    end
    def get_word_for_print(letters, goodl)
        result = ""
        for item in letters do
            if goodl.include?(item)
                result += item + " "
            else
                result += "__ "
            end
        end
        return result
    end
    def printv(errors)
        puts @statusim[errors]
    end
end
