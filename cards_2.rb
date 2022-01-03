cards = ["Jack", "Queen", "King", "Ace", "Joker"]

cards.reverse_each do |card|
  "#{card.upcase} #{card.length}"
end


scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |key, value|
  puts "#{key.capitalize} scored a #{value}!"
end

# Larry scored a 10!
# Moe scored a 8!
# Curly scored a 12!
