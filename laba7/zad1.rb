class Bridge
    def initialize
        puts "Мост создан"
        @opened = false
    end
    def open
        @opened = true
        puts "Мост открыт, можно ехать"
    end
    def close
        @opened = false
        puts "Мост закрыт"
    end
    def is_opened?
        return @opened
    end
end