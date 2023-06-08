module Translit
  def self.convert!(text, enforce_language = nil)
    language = if enforce_language
      enforce_input_language(enforce_language)
    else
      detect_input_language(text.split(/\s+/).first)
    end
    map = self.send(language.to_s).sort_by {|k,v| v.length <=>  k.length}
    map.each do |translit_key, translit_value|
      text.gsub!(translit_key.capitalize, translit_value.first)
      text.gsub!(translit_key, translit_value.last)
      
    end
      text
    end
    def self.convert(text, enforce_language = nil)
      convert!(text.dup, enforce_language)
    end
  private
    def self.create_russian_map
      self.english.inject({}) do |acc, tuple|
        rus_up, rus_low = tuple.last
        eng_value       = tuple.first
        acc[rus_up]  ? acc[rus_up]  << eng_value.capitalize : acc[rus_up]  = [eng_value.capitalize]
        acc[rus_low] ? acc[rus_low] << eng_value            : acc[rus_low] = [eng_value]
        acc
      end
    end
    def self.detect_input_language(text)
      text.scan(/\w+/).empty? ? :english : :russian
    end
    def self.enforce_input_language(language)
      if language == :english
        :russian
      else
        :english
      end
    end
  
    def self.russian
      { "эй"=>["А","а"], "би"=>["B","b"], "си"=>["C","c"], "ди"=>["D","d"], "и"=>["E","e"], "эф"=>["F","f"], "джи"=>["G","g"], "эйч"=>["H","h"], "аи"=>["I","i"], "джей"=>["J","j"],
        "кей"=>["K","k"], "эл"=>["L","l"], "эм"=>["M","m"], "эн"=>["N","n"], "оу"=>["O","o"], "пи"=>["P","p"], "кью"=>["Q","q"], "эр"=>["R","r"], "эс"=>["S","s"], "ти"=>["T","t"],
        "ю"=>["U","u"], "ви"=>["V","v"], "дабл-ю"=>["W","w"], "икс"=>["X","x"], "уай"=>["Y","y"], "зед"=>["Z","z"], "c"=>["Ц","ц"], "ch"=>["Ч","ч"], "sh"=>["Ш","ш"], "w"=>["В","в"],
        "shh"=>["Щ","щ"], "sch"=>["Щ","щ"], "#"=>["Ъ","ъ"], "y"=>["Ы","ы"], "'"=>["Ь","ь"], "je"=>["Э","э"], "ä"=>["Э","э"], "ju"=>["Ю","ю"], "yu"=>["Ю","ю"],
        "s"=>["С","с"], "t"=>["Т","т"], "u"=>["У","у"], "f"=>["Ф","ф"], "h"=>["Х","х"], "x"=>["Кс","кс"], "ts"=>["Ц","ц"], "ch"=>["Ч","ч"], "sh"=>["Ш","ш"], "w"=>["В","в"],
        "shch"=>["Щ","щ"], "sch"=>["Щ","щ"], "#"=>["Ъ","ъ"], "y"=>["Ы","ы"], ""=>["Ь","ь"], "je"=>["Э","э"], "ä"=>["Э","э"], "yu"=>["Ю","ю"], "ju"=>["Ю","ю"],
        "ü"=>["Ю","ю"], "ya"=>["Я","я"], "ja"=>["Я","я"], "q"=>["Я","я"]}
    end
  
    def self.english
      @russian ||= create_russian_map
    end
  end