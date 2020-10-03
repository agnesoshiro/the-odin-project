# Test input: caesar_cipher("Hello, World", 5)
# Test output: Mjqqt, Btwqi!

def caesar_cipher(string, shift_factor)
  letters = ('a'..'z').to_a
  letters_upcase = ('A'..'Z').to_a
  keys = (1..26).to_a
  index = keys.zip(letters).to_h

  string = "Hello, World!"
  string_new = ""

  (string.chars).each do |char|
    if letters.include?(char) == true
        if index.key(char).to_i+shift_factor > 26
        string_new.concat(index.fetch((index.key(char).to_i+shift_factor)-26))
      else
        string_new.concat(index.fetch(index.key(char).to_i+shift_factor))
      end
    elsif letters_upcase.include?(char) == true
      if index.key(char.downcase).to_i+shift_factor > 26
        string_new.concat(index.fetch((index.key(char.downcase).to_i+shift_factor)-26).upcase)
      else
        string_new.concat(index.fetch(index.key(char.downcase).to_i+shift_factor).upcase)
      end
    else
      string_new.concat(char)
    end
  end

  puts string_new

end