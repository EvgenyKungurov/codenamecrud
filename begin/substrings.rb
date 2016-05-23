dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit']

def substrings(string, dictionary)
  count = Hash.new(0)
  string.split(' ').each { |word| dictionary.each { |v| count[v] += 1 if word[v] }}
  count  
end

puts substrings('below bla habr', dictionary)

puts substrings('Howdy partner, sit down! How''s it going?', dictionary)