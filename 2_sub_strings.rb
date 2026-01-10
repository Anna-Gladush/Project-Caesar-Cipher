def substrings(string, dictionary)
  # Quick Tip: Recall how to turn strings into arrays and arrays into strings.
  #should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
  # > substrings("Howdy partner, sit down! How's it going?", dictionary)
  # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }


  # Makes an array for substrings
  # string = "below"
  combinations_storage = []
  substring_storage = []
  work = string.split("")
  work.each_with_index {|char, idx| combinations_storage << work.combination(idx+1).to_a}
  combinations_storage.each {|arr| arr.each {|array| substring_storage << array.join}}

  # Checks if substring in substring_storage is in dictionary

  
  # Next, make sure your method can handle multiple words:
  #  > substrings("Howdy partner, sit down! How's it going?", dictionary)
  # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
end