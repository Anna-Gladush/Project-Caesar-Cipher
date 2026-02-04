def random_word
  dictionary = []
  File.open('words.txt', 'r') do |file|
    file.readlines.each do |line|
      dictionary << line
    end
  end
  dictionary.select! { |word| word.length >= 5 && word.length <= 12 }
  dictionary.sample
end

word = random_word # unnecessary
puts word, word.length # 12
correct_char = String.new('_' * word.length)
puts correct_char