module Other
    DEF = 456
    GHI = 789
    def override
        puts "OTHER override"
    end
    def implicit
        puts "OTHER implicit"
    end
    def Other.altered
        puts "OTHER altered"
    end
    def print_abc
        puts @abc
    end
    def print_def
        puts DEF
    end
    def print_ghi
        puts GHI
    end
end

class Child
    include Other
    GHI = 987
    def initialize
        @abc = 123
        @ghi = 987
    end
    def override
        puts "CHILD override"
    end
    def altered
        puts "CHILD BEFORE altered"
        Other.altered
        puts "CHILD AFTER altered"
    end
end

son = Child.new

son.implicit
son.override
son.altered
son.print_abc
son.print_def
son.print_ghi