if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

require "REXML/document"
current_path = File.dirname(__FILE__)
file_name = current_path + "/magazin.xml"

abort "У нас нет о тебе данных" unless File.exist?(file_name)

file = File.new(file_name, 'r:UTF-8')
doc = REXML::Document.new(file)
file.close

price = Hash.new

doc.elements.each("maga/films") do |item|
    loss_sum = item.attributes["amount"].to_i
    loss_date = Date.parse(item.attributes["date"])
    price[loss_date] ||= 0 
    price[loss_date] += loss_sum
    
end

file.close
sum_by_month = Hash.new
price.keys.sort.each do |key|
    sum_by_month[key.strftime("%B %Y")] ||= 0
    sum_by_month[key.strftime("%B %Y")] += price[key]
end

current_month = price.keys.sort[0].strftime("%B %Y")

puts "------[ #{current_month}, всего потрачено: #{sum_by_month[current_month]} p. ]------"

price.keys.sort.each do |key|
    if key.strftime("%B %Y") != current_month
        current_month = key.strftime("%B %Y")
        puts "------[ #{current_month}, всего потрачено: #{sum_by_month[current_month]} p. ]------"
    end
    puts "\t#{key.day}: #{price[key]} p."
end