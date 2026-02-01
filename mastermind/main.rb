class Computer

end

class Player

end
# colors: violet, yellow, blue, green - guess
# colors: white, black - feedback
# HOW many guesses are left - counter!
# board
# feedback  guess
# |3 1|  v g y b
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------
# |3 1|
# |4 2|  4 3 2 1
# ---------------

# a = "|3 1|         "
# b = "|4 2|  4 3 2 1"
# a = a.gsub("|3 1|         ","|3 1|  v b y g")
# puts a, b

# puts "Enter v for violet, b for blue, y for yellow, g for green"
# puts "First slot: "
# first_slot = gets.chomp
# puts "Second slot: "
# second_slot = gets.chomp
# puts "Third slot: "
# third_slot = gets.chomp
# puts "Forth slot: "
# forth_slot = gets.chomp
# p first_slot, second_slot, third_slot, forth_slot
# ["v", "g", "b", "y"]