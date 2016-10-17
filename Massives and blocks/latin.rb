


def pig_latin(words)

  original_length = 0
  new_length = 0

  words.each do |word|
    puts "Original word: #{word}"
    original_length += word.length
    letters = word.chars
    first_letter = letters.shift
    new_word = "#{letters.join}#{first_letter}ay"
    puts "Pig Latin word: #{new_word}"
    new_length += new_word.length
  end


  puts "Total original length: #{original_length}"
  puts "Total Pig Latin length: #{new_length}"

end


my_words = ["blocks", "totally", "rock"]
pig_latin(my_words)


# Output
# Original word: blocks
# Pig Latin word: locksbay
# Original word: totally
# Pig Latin word: otallytay
# Original word: rock
# Pig Latin word: ockray
# Total original length: 17
# Total Pig Latin length: 23