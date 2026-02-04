require_relative 'hangman'

def find_index(str, letter)
  idx = []
  str_arr = str.split('')
  str_arr.each_with_index { |char, i| idx << i if char == letter }
  idx
end

def random_word
  dictionary = []
  File.open('words.txt', 'r') do |file|
    file.readlines.each do |line|
      dictionary << line if line.length >= 5 && line.length <= 12
    end
  end
  dictionary.sample
end

def user_input
  char = 'word'
  ask = 'Please enter your guess (one letter): '
  until char.length == 1 && char.match?(/[A-Za-z]/)
    puts ask
    char = gets.chomp
  end
  char
end

def game
  word = random_word
  puts word, (word.length - 1)
  guess_word = String.new('_' * (word.length - 1))
  wrong_guess = []
  try_left = 0
  puts guess_word
  while try_left <= 9
    puts 'You won!' if word == guess_word
    if try_left == 9
      hangman(9)
      puts 'You lost!'
    end
    break if word == guess_word || try_left == 9

    guess = user_input
    if word.include?(guess) == true
      idx = find_index(word, guess)
      idx.each { |i| guess_word[i] = guess }
    else
      hangman(try_left + 1)
      wrong_guess << guess
      try_left += 1
      puts "Tries left: #{9 - try_left}"
    end
    puts guess_word
    print "#{wrong_guess.join(', ')}\n"
  end
end

game