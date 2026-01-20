module Turnable
  def turn
    answer = gets.chomp.to_i unless answer <= 9 && answer >= 0
  end
end

class Player
  turns = 0
  include Turnable
end

class PlayerX < Player
  
end

class PlayerO < Player
  
end