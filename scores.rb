scores = [83, 71, 92, 64, 98, 87, 75, 69]

scores_doubled = scores.reduce do |sum, score|
  sum + score
  end

puts scores_doubled

even, odd = scores.partition { |score| score.even? }

puts "\n even"

puts even

puts "\n==========="

puts "\n odd"

puts odd


