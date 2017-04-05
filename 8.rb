hsh = {first: ['the', 'quick'], second: ['brown', 'fox'],
  third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

VOWELS = %w(a e i o u y)

hsh.each_value do |value|
  value.each do |string|
    string.each_char do |char|
      print char if VOWELS.include?(char.downcase)
    end
  end
end
puts