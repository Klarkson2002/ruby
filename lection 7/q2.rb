class Cameleo
    def change_color(color_name)
        puts "Теперь я #{color_name}"
    end
end

require 'cameleo'

cameleo = Cameleo.new

cameleo.change_color("красный")
cameleo.change_color("черный")
cameleo.change_color("синий")
