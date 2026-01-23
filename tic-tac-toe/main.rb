def turn(symbol_positions, symbol, a_row, c_row, e_row)
  answer = gets.chomp.to_i
  answer_str = answer.to_s
  if a_row.include?(answer_str)
    a_row = a_row.gsub(answer_str, symbol)
  elsif c_row.include?(answer_str)
    c_row = c_row.gsub(answer_str, symbol)
  elsif e_row.include?(answer_str)
    e_row = e_row.gsub(answer_str, symbol)
  end
  symbol_positions << answer
  [a_row, c_row, e_row]
end

def win_check?(symbol_positions, symbol)
  player = symbol == 'X' ? 1 : 2
  win_pos = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  win_pos.any? do |arr|
    if arr.all? { |item| symbol_positions.include?(item) }
      puts "Player #{player} has won"
      true
    end
  end
end

def round
  puts `clear`
  puts 'Game: Tic Tac Toe, presented by yours truly'
  # Table
  a_row = ' 1 | 2 | 3 '
  c_row = ' 4 | 5 | 6 '
  e_row = ' 7 | 8 | 9 '
  divider = '-----------'
  puts a_row, divider, c_row, divider, e_row
  puts 'Enter a number from 1 to 9'

  x_positions = []
  o_positions = []
  answer = [a_row, c_row, e_row]

  i = 9
  while i >= 1
    puts 'Player 1 turn: '
    answer = turn(x_positions, 'X', answer[0], answer[1], answer[2])
    puts answer[0], divider, answer[1], divider, answer[2]
    i -= 1
    break if win_check?(x_positions, 'X') == true

    next if i <= 0

    puts 'Player 2 turn: '
    answer = turn(o_positions, 'O', answer[0], answer[1], answer[2])
    puts answer[0], divider, answer[1], divider, answer[2]
    i -= 1
    break if win_check?(o_positions, 'O') == true
  end
  puts `clear`
end

round
# 2.times { round }

# class Player
#   def turn
#     answer = gets.chomp
#     while answer >= 1 && answer <= 9
#       used_numbers << answer
#     end
#   end
#   def symbol
#     sym = nil
#     until sym == 'X' || sym == 'O'
#       puts 'Pick "X" or "O"'
#       sym = gets.chomp
#       sym.upcase!
#     end
#     sym
#   end
# end

# player1 = Player.new
# player2 = Player.new
# choice_of_p1 = player1.symbol

# if choice_of_p1 == 'X'
#   choice_of_p2 = 'O'
# else 
#   choice_of_p2 = 'X'
# end