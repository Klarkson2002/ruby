require_relative 'lib/calculator'

begin
  puts 'Первое число'
  number1 = gets.chomp
  puts 'Второе число'
  number2 = gets.chomp
  puts 'Выберите операцию (+,-,/,*)'
  operation = gets.chomp
  puts Calculator.new(number1, number2, operation).answer
rescue ZeroDivisionError => error
 puts "#{error.message}"
end
