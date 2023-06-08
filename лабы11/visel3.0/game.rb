class Game 
def initialize(slovo)
    @letters = getl(slovo)
    @errors = 0
    @goodl = []
    @badl = []
    @status = 0
end
def getl(slovo)
    if (slovo == nil || slovo == "")
        abort "Для игры введите загаданное слово в качестве аргумента при запуске программы"
    end
    return slovo.encode("UTF-8").split("")
end
def ask_next_letter
    puts "Введите следующую букву"
    letter = ""
    while letter == "" do
        letter = STDIN.gets.encode("UTF-8").chomp
    end
    nextstep(letter)
end
def nextstep(bookva)
    if @status == -1 || @status == 1
        return
    end
    if @goodl.include?(bookva) || @badl.include?(bookva)
        return
    end
    if @letters.include?(bookva)
        goodl << bookva
        if @goodl.uniq.sort == @letters.uniq.sort
            @status = 1
        end
    else
        @badl << bookva
        @errors += 1
        if @errors >= 7
            @status = -1
        end
    end
end
def status 
    return @status
end
def errors
    return @errors
end
def letters 
    return @letters
end
def goodl
    return @goodl
end
def badl 
    return @badl
 end
end