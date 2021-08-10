
class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

bronze, others = flyers.partition { |f| f.status == :bronze}

puts "These are the platinum users:"

puts bronze

total = bronze.map { |b| b.miles_flown }.reduce(:+)

puts total


puts "------------------------------"

puts "\nThese are the others:"

puts others


puts "\nmost miles"

most_miles = flyers.max_by { |f| f.miles_flown }

puts "Top Flyer: #{most_miles}"

# puts "Tags:"

# tags = flyers.map { |f| "#{f.name} - (#{f.status.upcase})"}

# puts tags

# puts "Lufthansa:"

# miles_to_km = flyers.map { |f| "#{f.name} has #{f.miles_flown*1.6} miles." }

# puts miles_to_km

# total = flyers.map { |f| f.miles_flown }.reduce(:+)

# puts "\nA total of #{total*1.6} miles travelled"

# total_kms_flown = flyers.reduce(0) { |sum, flyer| sum + (flyer.miles_flown * 1.6) }
# puts "Total km flown: #{total_kms_flown}"



