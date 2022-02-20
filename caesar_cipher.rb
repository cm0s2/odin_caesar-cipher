UPPERCASE_START = 64
LOWERCASE_START = 97

def caesar_cipher(text, n)
  caesar = ""
  text.split("").each do |c|
    if c.match(/^[[:alpha:]]$/)
      if c == c.upcase
        caesar += (UPPERCASE_START + (c.ord - UPPERCASE_START + n) % 26).chr
      else
        caesar += (LOWERCASE_START + (c.ord - LOWERCASE_START + n) % 26).chr
      end
    else
      caesar += c
    end
  end
  caesar
end

puts caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"

# A = 64
# Z = 90
# a = 97
# z = 122

# 64 + (90 - 64 + n) % 26