def decode_char(char)
  result = ''

  case char
  when '.-'
    result += 'A'
  when '-...'
    result += 'B'
  when '-.-.'
    result += 'C'
  when '-..'
    result += 'D'
  when '.'
    result += 'E'
  when '..-.'
    result += 'F'
  end
  result
end

def decode_char2(char)
  result = ''

  case char
  when '--.'
    result += 'G'
  when '....'
    result += 'H'
  when '..'
    result += 'I'
  when '.---'
    result += 'J'
  when '-.-'
    result += 'K'
  when '.-..'
    result += 'L'

  end
  result
end

def decode_char3(char)
  result = ''

  case char
  when '--'
    result += 'M'
  when '-.'
    result += 'N'
  when '---'
    result += 'O'
  when '.--.'
    result += 'P'
  when '--.-'
    result += 'Q'
  when '.-.'
    result += 'R'
  end
  result
end

def decode_char4(char)
  result = ''

  case char
  when '...'
    result += 'S'
  when '-'
    result += 'T'
  when '..-'
    result += 'U'
  when '...-'
    result += 'V'
  when '.--'
    result += 'W'
  when '-..-'
    result += 'X'
  end

  result
end

def decode_char5(char)
  result = ''

  case char
  when '-.--'
    result += 'Y'
  when '--..'
    result += 'Z'
  end

  result
end

def decode_word(word)
  result = ''

  chars = word.split
  chars.each do |char|
    result += decode_char(char)
    result += decode_char2(char)
    result += decode_char3(char)
    result += decode_char4(char)
    result += decode_char5(char)
  end

  result
end

def decode(message)
  result = ''

  words = message.split('   ')
  words.each do |word|
    result += "#{decode_word(word)} "
  end

  result.strip
end

decoded = decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

puts decoded
