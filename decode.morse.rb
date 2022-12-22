# morse code hash
MORSE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# decode a character
def decode_char(string)
  # return matching value in the hash
  MORSE[string]
end

# decode a word
def decode_word(string)
  morse_arr = string.split
  formed_word = ''
  # Decode each character in the string after spitting it
  # return matching char and add it to the formed word
  morse_arr.each do |char|
    formed_word += decode_char(char)
  end

  formed_word
end

# decode a sentence
def decode(string)
  morse_arr = string.split('  ')
  formed_sentence = ''
  # decode each word and add it to the sentence separted by a whitespace
  morse_arr.each do |word|
    formed_sentence += decode_word(word)
    formed_sentence += ' '
  end
  formed_sentence.rstrip
end

# MY NAME IS JOHN
puts(decode('-- -.--   -. .- -- .   .. ...   .--- --- .... -.'))

# A BOX FULL OF RUBIES
puts(decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
