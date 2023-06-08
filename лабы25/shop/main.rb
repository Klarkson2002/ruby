require "rexml/document"

require_relative 'product.rb'
require_relative 'book.rb'
require_relative 'music.rb'
require_relative 'movie.rb'

total_price = 0

# Всё, что мы поменяем, это то, как мы получаем массив продуктов
# Раньше мы генерили его руками, теперь этим будет заниматься статический метод
# read_from_xml, которому мы будем передавать относительный путь к файлу
products = Product.read_from_xml('data/products.xml')

choice = nil

while(choice != 'x')
  Product.showcase(products)

  choice = STDIN.gets.chomp

  if(choice != 'x' && choice.to_i < products.size && choice.to_i >= 0)
    product = products[choice.to_i]
    total_price += product.buy
  end
end

puts "Спасибо за покупки, с Вас #{total_price} руб."