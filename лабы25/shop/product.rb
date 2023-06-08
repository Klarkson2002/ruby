
class Product
  def initialize(price, amount)
  @price = price
  @amount = amount
  end

  def price
    @price
  end

  def update
  end

  def info
  end

  def show
    "#{info} - #{@price} руб. [осталось: #{@amount}]"
  end

  def self.showcase(products)
    puts "Что хотите купить?\n\n"

    products.each_with_index do |product, index|
      puts "#{index}: #{product.show}"
    end
    puts "x. Покинуть магазин"
    puts "\n"
  end

  # Метод покупки товара
  def buy
    # Если товар был на складе — уменить количество и вернуть цену
    if @amount > 0
      puts "Вы купили товар #{info}"

      @amount -= 1
      price

      # Если товар закончился — продавать нечего, доход магазина 0
    else
      puts "К сожалению, больше нет"
      0
    end
  end

  def self.read_from_xml(file_name)
    # Получим абсолютный путь к файлу
    file_path = File.dirname(__FILE__) + "/" + file_name

    # Если файла нет, сразу закончим выполнение программы, сообщив об этом
    unless File.exist?(file_path)
      abort "Файл #{file_path} не найден"
    end

    # Открываем файл и передаём его в парсер
    file = File.new(file_path, "r:UTF-8")
    doc = REXML::Document.new(file)
    file.close

    # Две временных переменных, которые мы будем использовать дальше
    result = []
    product = nil

    # Найдём все теги product, которые лежат внутри корневого тега products
    doc.elements.each("products/product") do |product_node|
      # Из атрибутов каждого такого тега достанем цену и количество на складе
      price = product_node.attributes["price"].to_i
      amount_available = product_node.attributes["amount_available"].to_i

      # По правилам формирования нашего файла в каждом теге product
      # Может быть только один элемент music, movie или disk
      # Таким образом, в два из этих цикла мы даже на зайдём
      product_node.each_element("book") do |book_node|
        # Сейчас мы находимся внутри тега book
        # И можем прочитать его аттрибуты и создать соответствующий класс
        product = Book.new(price, amount_available)
        product.update(
          title: book_node.attributes["title"],
          author_name: book_node.attributes["author_name"]
        )
      end

      product_node.each_element("movie") do |movie_node|
        # Сейчас мы находимся внутри тега movie
        # ...
        product = Movie.new(price, amount_available)
        product.update(
          title: movie_node.attributes["title"],
          director_name: movie_node.attributes["director_name"],
          year: movie_node.attributes["year"]
        )
      end

      product_node.each_element("music") do |music_node|
        # Аналогично для дисков
        # ...
        product = Music.new(price, amount_available)
        product.update(
          album_name: music_node.attributes["album_name"],
          artist_name: music_node.attributes["artist_name"],
          genre: music_node.attributes["genre"]
        )
      end

      # Теперь запишем созданный экземпляр в результирующий массив
      # и перейдём к следующему тегу product (см начало цикла на строке 63)
      result.push(product)
    end

    # Наконец, вернём массив продуктов
    return result
  end

  # Напишем статический метод, который будет возвращать список детей класса Product
  def self.product_types
    [Book, Movie, Music]
  end

  # А этот абстрактный метод будет помогать каждому ребёнку
  # заполнять его поля из консоли
  def read_from_console
  end

  # А этот метод будет определён у родителя и доопределён у детей
  def to_xml
    res = REXML::Element.new('product')
    res.attributes["price"] = @price
    res.attributes["amount_available"] = @amount_available
    res
  end

  # И наконец, напишем метод, который будет сохранять продукт в xml-файл
  # Предполагается, что файл уже готов по структуре для сохранения
  def save_to_xml(file_name)
    file_path = File.dirname(__FILE__) + "/" + file_name

    unless File.exist?(file_path)
      abort "Файл #{file_path} не найден"
    end

    # Читаем текущий список продуктов
    file = File.new(file_path, "r:UTF-8")
    doc = REXML::Document.new(file)
    file.close

    # Дописываем новый продукт
    file = File.new(file_path, "w:UTF-8")
    doc.root.add_element(self.to_xml)
    doc.write(file, 2)
    file.close
  end
end

