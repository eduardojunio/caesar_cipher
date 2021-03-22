def caesar_cipher(text, key)
  ciphered = text.split('').map do |letter|
    if is_letter?(letter)
      if is_uppercase?(letter)
        ((((letter.ord - 65) + key) % 26) + 65).chr
      else
        ((((letter.ord - 97) + key) % 26) + 97).chr
      end
    else
      letter
    end
  end
  ciphered.join('')
end

def is_uppercase?(letter)
  letter.ord >= "A".ord && letter.ord <= "Z".ord
end

def is_downcase?(letter)
  letter.ord >= "a".ord && letter.ord <= "z".ord
end

def is_letter?(letter)
  is_downcase?(letter) || is_uppercase?(letter)
end
