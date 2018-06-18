
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  p cipher
   ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  p ciphertext_chars.join
end



def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  p cipher
     plaintext_chars = ciphertext.chars.map do |char|
     p cipher[char.ord - 65]
  end
    p plaintext_chars.join
end

p encode("theswiftfoxjumpedoverthelazydog", "secretkey") == "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey") == "theswiftfoxjumpedoverthelazydog"

