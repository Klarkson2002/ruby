require_relative "body"
body1 = BodyBuilder.new
body2 = BodyBuilder.new
body3 = BodyBuilder.new
rand(1..10).times do
    body1.pump("triceps")
end
rand(1..10).times do
    body1.pump("biceps")
end
rand(1..10).times do
    body1.pump("deltovidka")
end
rand(1..10).times do
    body2.pump("triceps")
end
rand(1..10).times do
    body2.pump("biceps")
end
rand(1..10).times do 
    body2.pump("deltovidka")
end
rand(1..10).times do
    body3.pump("triceps")
end
rand(1..10).times do
    body3.pump("biceps")
end
rand(1..10).times do
    body3.pump("deltovidka")
end
puts "Первый бодибилдер: "
body1.show_muscles
puts
puts "Второй бодибилдер: "
body2.show_muscles
puts
puts "Третий бодибилдер: "
body3.show_muscles
puts
