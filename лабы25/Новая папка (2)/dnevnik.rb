@text
@created_at

@url
@description
@created_at

@text
@due_date
@created_at

class Post

    def initialize
        @created_at = Time.now
        @text = nil
    end

    def read_from_console
    end

    def to_strings
    end

    def save
    end

end

class Memo < Post
    def read_from_console
    end
 
end

class Link < Post

    def initialize
        super
        @url = ''
    end

    def read_from_console
    end

    def to_strings
    end
end

require 'date'

class Task < Post
    def initialize
        super
        @due_date = Time.now
    end