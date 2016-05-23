def caesar_cipher(str, shift)
  downcase = ("a".."z").to_a.join
  upcase = ('A'..'Z').to_a.join
  result = ''
  str.chars.map do |c|
    if downcase.include? c
      result << downcase[(downcase.index(c) + shift) % 26]
    elsif upcase.include? c
      result << upcase[(upcase.index(c) + shift) % 26]
    else
      result << c
    end
  end
  result
end

puts caesar_cipher('What a string!', 5)












































