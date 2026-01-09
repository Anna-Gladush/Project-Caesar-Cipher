def caesar_cipher(string, step)
  # You will need to remember how to convert a string into a number.
  # Don’t forget to wrap from z to a.
  # Don’t forget to keep the same case.
  # The Wikipedia quote discusses a Caesar cipher using a left shift.
  
  str_array = string.split.to_a
  new_words = []
  result = []
  str_array.each do |words|
    shift_letter = []
    word = words.split("")
    word.each do |letter|
      if ((65 <= letter.ord && letter.ord <= 90) || (97 <= letter.ord && letter.ord <= 122))
        shift_letter.push((letter.ord + 1).chr) 
      else
        shift_letter.push(letter)
      end
    end
    new_words.push(shift_letter)
    new_words.push(" ")
  end
  # debugger
  new_words.each do |words|
    if words.respond_to?(:to_a)
      result.push(words.join)
    else
      result.push(words)
    end
  end
  debugger
  result.pop
  result.join
end

def caesar_decipher(string, step)
  # Don’t forget to wrap from z to a.
  # Don’t forget to keep the same case.
  
end
caesar_cipher("What a string!", 1)
# caesar_cipher("What a string!", 5)
# caesar_decipher("Bmfy f xywnsl!", 5)