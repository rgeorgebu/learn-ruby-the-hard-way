def looper (n)
  numbers = []

  (0..n).each {|i|
    puts "At the top i is #{i}"
    numbers.push(i)

    i += 1
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  }

  puts "The numbers: "

  numbers.each {|num| puts num }
end

looper 5
