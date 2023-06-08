def initialize
    puts "Мост создан"
    @opened = false
end


def open 
    @opened = true
    puts "Мост открыт, можно ехать"
end

def is_opened?
    return @opened
end

if !bridge.is_open?
    bridge.open
end

another_bridge = bridge.new

