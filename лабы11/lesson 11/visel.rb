if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
        
    end
end
require_relative "game"
require_relative "res"
require_relative "gener"
reader = Wordreader.new
slovo = reader.readff("./data/words.txt")
game = Game.new(slovo)
print = Res.new
while game.status == 0 do 
    print.prints(game)
    game.ask_next_letter
end
print.prints(game)