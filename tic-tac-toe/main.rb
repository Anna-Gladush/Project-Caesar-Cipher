# Table
a = ' 1 | 2 | 3 '
b = '-----------'
c = ' 4 | 5 | 6 '
d = '-----------'
e = ' 7 | 8 | 9 '
f = '-----------'
puts a, b, c, d, e, f

used_numbers = []
3.times do
  puts 'Your turn: '
  answer = gets.chomp
  if a.include?(answer)
    a = a.gsub(answer, 'X')
  elsif c.include?(answer)
    c = c.gsub(answer, 'X')
  elsif e.include?(answer)
    e = e.gsub(answer, 'X')
  end
  used_numbers << answer
  puts a, b, c, d, e, f
end
p used_numbers
# puts c.count('O')
# puts `clear` #will clear the output

class Player
  def turn
    answer = gets.chomp
    while answer >= 1 && answer <= 9
      used_numbers << answer
    end
  end
  def symbol
    sym = nil
    until sym == 'X' || sym == 'O'
      puts 'Pick "X" or "O"'
      sym = gets.chomp
      sym.upcase!
    end
    sym
  end
end

player1 = Player.new
player2 = Player.new
choice_of_p1 = player1.symbol

if choice_of_p1 == 'X'
  choice_of_p2 = 'O'
else 
  choice_of_p2 = 'X'
end