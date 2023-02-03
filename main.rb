def decode_char(char)
  result = ""
  
  if char === ".-"  
   result += "A"
  elsif char === "-..."
   result += "B"
  elsif char === "-.-."
   result += "C"
  elsif char === "-.."
   result += "D"
  elsif char === "."
   result += "E"
  elsif char === "..-."
   result += "F"
  elsif char === "--."
   result += "G"
  elsif char === "...."
   result += "H"
  elsif char === ".."
   result += "I"
  elsif char === ".---"
   result += "J"
  elsif char === "-.-"
   result += "K"
  elsif char === ".-.."
   result += "L"
  elsif char === "--"
   result += "M"
  elsif char === "-."
   result += "N"
  elsif char === "---"
   result += "O"
  elsif char === ".--."
   result += "P"
  elsif char === "--.-"
   result += "Q"
  elsif char === ".-."
   result += "R"
  elsif char === "..."
   result += "S"
  elsif char === "-"
   result += "T"
  elsif char === "..-"
   result += "U"
  elsif char === "...-"
   result += "V"
  elsif char === ".--"
   result += "W"
  elsif char === "-..-"
   result += "X"
  elsif char === "-.--"
   result += "Y"
  elsif char === "--.."
   result += "Z"
  end
  
  result
end

def decode_word(word)
  result = ""
  
  chars = word.split(" ")
  chars.each do |char|
    result += decode_char(char)
  end
  
  result
end

def decode(message)
  result = ""
  
  words = message.split("   ")
  words.each do |word|
    result += decode_word(word) + " "
  end
  
  result.strip
end

decoded = decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

puts decoded
