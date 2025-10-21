
def ceasar_cipher(string, num)
  asci_array = string.bytes

  crypted_asci_array = asci_array.map do |code|
    if code >= "A".ord && code <= "Z".ord
      puts "Code From A-Z: #{code}"
      code += num
      if code > "Z".ord
        code -= ("Z".ord - "A".ord + 1)
        code.chr
      else
        code.chr
      end
    elsif code >= "a".ord && code <= "z".ord
      puts "Code From a-z: #{code}"
      code += num
      if code > "z".ord
        code -= ("z".ord - "a".ord + 1)
        code.chr
      else
        code.chr
      end
    else
      code.chr
    end
  end

  puts "--- This is the new Array ---"
  puts crypted_asci_array.join
end

ceasar_cipher("What a string!", 5)
