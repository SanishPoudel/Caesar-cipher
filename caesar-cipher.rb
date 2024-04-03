#constant for checking if the characters are alphabetic
ALPHABETS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

#getting user input for plaintext
puts "Enter plain text:"
plain_text = gets.chomp

#getting user input for cipher key
puts "Enter cipher key"
cipher_key = gets.chomp

def caesar_cipher(text, key)
  cipher_text = ""
  text.each_char do |character|
    #check if the character is alphabetic
    if ALPHABETS.include?(character)
      #incase of uppercase
      if character == character.upcase
        char_int = character.ord - 65
        cipher_int = ((char_int + key) % 26) + 65
        cipher_text += cipher_int.chr
      #incase of lowercase
      else
        char_int = character.ord - 97
        cipher_int = ((char_int + key) % 26) + 97
        cipher_text += cipher_int.chr
      end
    #if the character is not alphabetic keep it as it is
    else
      cipher_text += character
    end
  end
  #return the cipher text
  "Cipher Text: " + cipher_text
end

#prints the cipher text
puts caesar_cipher(plain_text, cipher_key.to_i)