#puts Math.sin(Math::PI).round(0) + Math.cos(Math::PI).round(0)
puts "Чтобы узнать длину окружности, скажите её радиус, если вы не знаете радиус, но знаете диаметр, то просто разделите диаметр на 2"
R = STDIN.gets.encode("UTF-8").chomp
circle = 2 * Math::PI * R.to_f
puts circle.round(2).ceil(1)


