require "./zad1.rb"
bridge = Bridge.new
sleep 1
if !bridge.is_opened?
    bridge.open
end
sleep 1
bridge.close