def shift_char(ascii_dec, factor, min, max)
  ascii_dec += factor

  if ascii_dec < min
    ascii_dec = max - (min - ascii_dec) + 1
  elsif ascii_dec > max
    ascii_dec = min + (ascii_dec - max) - 1
  end

  ascii_dec
end

def caesar_cipher(string, factor)
  cipher = ''

  string.chars do |char|
    ascii_dec = char.ord

    if char.ord.between?(65, 90) # A -> Z is 65 -> 90
      ascii_dec = shift_char(ascii_dec, factor, 65, 90)
    elsif char.ord.between?(97, 122) # a -> z is 97 -> 122
      ascii_dec = shift_char(ascii_dec, factor, 97, 122)
    end

    cipher += ascii_dec.chr
  end

  cipher
end
