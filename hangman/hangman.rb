class Hangman
  def level1
    puts ' '
    puts '       |'
    puts '       |'
    puts '       |'
    puts '       |'
    puts '       |'
    puts '========='
  end

  def level2
    puts '   +---+'
    puts '       |'
    puts '       |'
    puts '       |'
    puts '       |'
    puts '       |'
    puts '========='
  end

  def level3
    puts '   +---+'
    puts '   |   |'
    puts '       |'
    puts '       |'
    puts '       |'
    puts '       |'
    puts '========='
  end

  def level4
    puts '   +---+'
    puts '   |   |'
    puts '   0   |'
    puts '       |'
    puts '       |'
    puts '       |'
    puts '========='
  end

  def level5
    puts '   +---+'
    puts '   |   |'
    puts '   0   |'
    puts '   |   |'
    puts '       |'
    puts '       |'
    puts '========='
  end

  def level6
    puts '   +---+'
    puts '   |   |'
    puts '   0   |'
    puts '   |\  |'
    puts '       |'
    puts '       |'
    puts '========='
  end

  def level7
    puts '   +---+'
    puts '   |   |'
    puts '   0   |'
    puts '  /|\  |'
    puts '       |'
    puts '       |'
    puts '========='
  end

  def level8
    puts '   +---+'
    puts '   |   |'
    puts '   0   |'
    puts '  /|\  |'
    puts '    \  |'
    puts '       |'
    puts '========='
  end

  def gameover
    puts '   +---+'
    puts '   |   |'
    puts '   0   |'
    puts '  /|\  |'
    puts '  / \  |'
    puts '       |'
    puts '========='
  end
end
hang = Hangman.new
hang.level1
hang.level2
hang.level3
hang.level4
hang.level5
hang.level6
hang.level7
hang.level8
hang.gameover
