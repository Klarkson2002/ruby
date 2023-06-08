# encoding: utf-8
#
# Программа «таблица Менделеева», иллюстрирующая работу хэшей (ассоциативных
# массивов).
#
# (с) rubyrush.ru

# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Ассоциативный массив, где символу элемента соответствует фамиля его
# первооткрывателя.
#
# Продолжите таблицу сами по вкусу: http://bit.ly/2nqAPH1
table = {
  'Jr' => 'Jotaro',
  'Jzf' => 'Jozef',
  'Li' => 'LizaLiza',
  'Ka' => 'Kakasi',
  'Na' => 'Naruto',
  'S' => 'Sakura',
  'Sa' => 'Sakura',
  'O' => 'Obeme',
  'F' => 'Fuck',
  'Ni' => 'Nigger'
}

# Выводим пользователю количество элементов
puts "У нас всего элементов: #{table.keys.size}"

# Выводим пользователю сами элементы (ключи ассоциативного массива)
puts table.keys

# Спрашиваем у пользователя, какой элемент его интересует и записываем его
# выбор в переменную element.
puts 'О каком элементе хотите узнать?'
element = gets.chomp

# Проверка — есть ли в хэше элемент, который спросил пользователь
if table.key?(element)
  puts "Первооткрывателем этого элемента считается: #{table[element]}"
else
  puts 'Извините, про такой элемент мы еще не знаем.'
end
