if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

require "REXML/document"
current_path = File.dirname(__FILE__)
file_name = current_path + "/info.html"


abort "У нас нет о тебе данных" unless File.exist?(file_name)

file = File.new(file_name, 'r:UTF-8')
doc = REXML::Document.new(file)
file.close

card = {}
['li'].each do |field|
    card[field] = doc.root.elements[field].text
end

puts "#{card['li']}"