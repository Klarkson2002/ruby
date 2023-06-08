class Wordreader
    def readff(words)
        file = File.new("./data/words.txt", "r:UTF-8")
        lines = file.readlines
        file.close
        return lines.sample.chomp
        
    end
end       