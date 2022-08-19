require './mystuff.rb'

MyStuff.apple
MyStuff::apple

# MyStuff.orange - throws error
# MyStuff::orange - throws error

# MyStuff.TANGERINE - throws error
puts MyStuff::TANGERINE


class MoreStuff
    def MoreStuff.apple
        puts "apples"
    end

    def orange
        puts "oranges"
    end

    TANGERINE = 'getting tan'
    @MANGO = 'smoothie'
    @@ABC = 'DEF'
end

MoreStuff.apple
MoreStuff::apple

# MoreStuff.orange - errors
# MoreStuff::orange - errors

# puts MoreStuff.TANGERINE - errors
puts MoreStuff::TANGERINE

# puts MoreStuff.MANGO - errors
# puts MoreStuff::MANGO - errors

# puts MoreStuff.ABC - errors
# puts MoreStuff::ABC - errors

s = MoreStuff::new
# s.apple - errors
# s::apple - errors
s.orange
s::orange
# s.TANGERINE - errors
# s::TANGERINE - errors
# s.MANGO - errors
# s::MANGO - errors 
# s.ABC - errors
# s::ABC - errors

ss = MoreStuff.new
# s.apple - errors
# s::apple - errors
s.orange
s::orange
# s.TANGERINE - errors
# s::TANGERINE - errors
# s.MANGO - errors
# s::MANGO - errors
# s.ABC - errors
# s::ABC - errors