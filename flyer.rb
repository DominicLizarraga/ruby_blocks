
class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []

1.upto(5) do |count|
  flyers << Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count * 1000 )
end

flyers.each do |flyer|
  puts "#{flyer.name} - #{flyer.miles_flown} miles"
end

sum = 0

flyers.each do |flyer|
  sum += flyer.miles_flown
end

puts "Total miles flown : #{sum}"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }


1.upto(5) do |counter|
  promotions.each do |key, value|
    puts "Flyer #{counter} could earn #{value * counter * 1000 } miles by flying #{key}."
  end
end


puts "\nmiles to kilometers"

miles_to_km = flyers.map { |f| f.miles_flown * 1.6 }
puts miles_to_km

total = flyers.reduce(0) { |sum, km| sum + km.miles_flown }
puts total


