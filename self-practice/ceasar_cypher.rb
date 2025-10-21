
def ceasar_cipher(string, num)
  asci_array = Array.new(string.bytes)

  crypted_asci_array = asci_array.map do |code|
    if code == 32
      code = 32.chr
    elsif code == 122
      code -= 25
      (code + num).chr
    elsif code == 90
      code -= 25
      (code + num).chr
    else
      (code + num).chr
    end
  end

  puts "--- This is the new Array ---"
  puts crypted_asci_array
  puts crypted_asci_array.join
  
  # puts " --- a-z and A-Z ---"
  # puts "a".ord # 97
  # puts "z".ord # 122
  # puts "A".ord # 65
  # puts "Z".ord # 90
end

ceasar_cipher("What a string!", 5)
