cards = ["Jack", "Queen", "King", "Ace", "Joker"]

cards.reverse.each do |card|
  puts "#{card.upcase} - #{card.length}"
end

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |key, value|
  puts "#{key} scored a #{value}!"
end
