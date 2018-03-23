class CaesarCipher

  def self.caesar_cipher (entry, shift_factor = 0)

    ascii_ranges = { "digits"=> 48..57, "lowercase" => 97..122, "uppercase" => 65..90 }
    entry = entry.split("")
    entry.each_with_index do |x, i|   #iterate through array
      x = x.bytes.pop                 #convert to ascii values
      if ascii_ranges["digits"].include?(x) || ascii_ranges["uppercase"].include?(x) || ascii_ranges["lowercase"].include?(x) #ensure no symbols, punctuation are included
        if ascii_ranges["digits"].include?(x) #check which range from ascii_ranges
          shift_to = x + shift_factor         #assign new ascii value
          unless ascii_ranges["digits"].include?(shift_to) #ensure new value lands within original ascii_ranges
            shift_to = shift_to - 10
          end
        elsif ascii_ranges["lowercase"].include?(x)
          shift_to = x + shift_factor
          unless ascii_ranges["lowercase"].include?(shift_to)
            shift_to = shift_to - 26
          end
        elsif ascii_ranges["uppercase"].include?(x)
          shift_to = x + shift_factor
          unless ascii_ranges["uppercase"].include?(shift_to)
            shift_to = shift_to - 26
          end
        end
        entry[i] = shift_to.chr #assign new character to array
      end
    end
    entry = entry.join("") #join array back into string
    return entry
  end

end

puts CaesarCipher.caesar_cipher("0123456789", 1)
puts CaesarCipher.caesar_cipher("Madeleine", 6)
puts CaesarCipher.caesar_cipher("What a string!", 5)
