dictionary = []
File.open('words.txt', 'r') do |file|
  for line in file.readlines
    dictionary << line
  end
end

word = dictionary.sample
puts word, word.length
