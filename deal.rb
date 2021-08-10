def deal(number)
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  if block_given?
    number.times do
      random_face = faces.sample
      random_suit = suits.sample
      # call the block here
      result = yield random_face, random_suit
      puts "Your score is #{result}"
    end
  else
    puts "No block given"
  end
end

deal(3) do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  face.length + suit.length
end










