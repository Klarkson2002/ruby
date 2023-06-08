require 'securerandom'

def generate_password(length, uppercase, lowercase, digits, symbols)
  
  characters = []
  characters += ('A'..'Z').to_a if uppercase
  characters += ('a'..'z').to_a if lowercase
  characters += ('0'..'9').to_a if digits
  characters += %w(! @ # $ % ^ & * ( ) _ + - = { } [ ] \ | : ; " ' < > , . ? /) if symbols

  
  password = ''
  length.times { password += characters.sample }
  password
end


puts generate_password(8, true, true, true, false)