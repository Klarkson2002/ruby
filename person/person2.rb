class Person
    def initialize(first_name, middle_name, age)
        @first_name = first_name
        @middle_name = middle_name
        @age = age
    end
    def old?
        return @age >= 60
    end
    def full_name
        if old?
            return "{@first_name} #{@middle_name}"
        else
            return @first_name
        end
    end
    def age
        return @age
    end
end
    