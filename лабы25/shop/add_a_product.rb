
require "rexml/document"

require_relative 'product.rb'
require_relative 'book.rb'
require_relative 'music.rb'
require_relative 'movie.rb'

# Метод product_types возвращает нам массив всех детей Product
product_types = Product.product_types

# Спросим у пользователя, что он хочет добавить
choice = -1

until (0..product_types.count).include?(choice)
  puts "Какой товар вы хотите добавить?"
  product_types.each_with_index do |p, i|
    puts "#{i}: #{p.name}"
  end
  choice = STDIN.gets.chomp.to_i
end

# Попросим у пользователя указать цены и остаток
puts "Укажите стоимость продукта в рублях"
price = STDIN.gets.chomp.to_i

puts "Укажите, сколько единиц продукта осталось на складе"
amount_available = STDIN.gets.chomp.to_i

# Создадим выбранный продукт
product = product_types[choice].new(price, amount_available)

# И вызовем у него метод read_from_console
product.read_from_console

# Сохраним новый продукт в файл с продуктами
product.save_to_xml('data/products.xml')