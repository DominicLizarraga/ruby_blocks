scores = [83, 71, 92, 64, 98, 87, 75, 69]


high_scores = scores.find_all { |score| score > 80 }
# find_all == select
# puts high_scores


low_scores = scores.reject { |score| score > 80 }

# puts low_scores


less_than_70 = scores.find { |score| score < 70}
# less_than_70 = scores.detect { |score| score < 70}
# find_all == select

# puts less_than_70


scores_doubled = scores.map { |score| score * 2 }
# map == collect
# puts scores_doubled

sum = scores.reduce { |sum, n| sum + n }
# reduce == inject
# puts sum

sum = scores.inject { |sum, n| sum + n }
# puts sum


even, odd = scores.partition { |n| n.even? }

puts "Even numbers: \n#{even}"

puts "Odd numbers: \n#{odd}"











