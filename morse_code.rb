# Morse code Hash Dictionary

@morse_code_dict = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}

def converted_code(letter)
  @current_letter = @morse_code_dict[letter]
  @current_letter
end

def process_code(chars)
  @letters = chars.split
  @current_word = ''
  @letters.each do |letter|
    converted_code(letter)
    @current_word += converted_code(letter)
  end
  @current_word.to_s
end

def morse_decoder(string)
  @words = string.split('  ')
  @msg_arr = []
  @words.each do |word|
    @msg_arr << process_code(word)
  end
  @msg_arr.join(' ')
end
# morse_decoder('-- -.--   -. .- -- .')
# Author 1: Gordon
morse_decoder('--. --- .-. -.. --- -.')
# Author 2: Betsegaw
morse_decoder('-... . - ... . --. .- .--')
