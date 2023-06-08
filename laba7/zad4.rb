class Product
    attr_accessor :name, :price
  
    def initialize(name, price)
      @name = name
      @price = price
    end
  end
  
  class Cart
    attr_accessor :items
  
    def initialize
      @items = []
    end
  
    def add_item(product)
      @items << product
    end
  
    def remove_item(product)
      @items.delete(product)
    end
  
    def total_price
      @items.reduce(0) { |sum, item| sum + item.price }
    end
  end
  
  class Order
    attr_accessor :cart, :total_price, :payment_method
  
    def initialize(cart, total_price, payment_method)
      @cart = cart
      @total_price = total_price
      @payment_method = payment_method
    end
  
    def confirm_order
      # Отправляем запрос на оплату через выбранный метод оплаты
      # Если оплата прошла успешно, создаем новый заказ и очищаем корзину покупок
      if payment_method.pay(total_price)
        new_order = { cart: cart, total_price: total_price, payment_method: payment_method }
        OrderManager.add_order(new_order)
        cart.items.clear
        true
      else
        false
      end
    end
  end
  
  class PaymentMethod
    def pay(amount)
      # Реализация оплаты через выбранный метод оплаты (например, банковскую карту или PayPal)
      true # Возвращаем true, если оплата прошла успешно, и false в противном случае
    end
  end
  
  class OrderManager
    @@orders = []
  
    def self.add_order(order)
      @@orders << order
    end
  
    def self.get_orders
      @@orders
    end
  end
  # Создаем несколько товаров
product1 = Product.new('Книга', 500)
product2 = Product.new('Фильм', 200)
product3 = Product.new('Музыка', 100)

# Создаем корзину покупок и добавляем в нее товары
cart = Cart.new
cart.add_item(product1)
cart.add_item(product2)
cart.add_item(product3)

# Получаем общую стоимость корзины покупок
total_price = cart.total_price

# Создаем новый заказ с выбранным методом оплаты
payment_method = PaymentMethod.new
order = Order.new(cart, total_price, payment_method)

# Подтверждаем заказ и отправляем запрос на оплату
if order.confirm_order
  puts 'Заказ успешно оформлен'
else
  puts 'Ошибка при оформлении заказа'
end

# Получаем список всех заказов
orders = OrderManager.get_orders
puts orders.inspect