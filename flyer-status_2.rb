
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

# frequent_flyers = flyers.select { |f| f.miles_flown >= 3000}
# puts frequent_flyers

# incentive = flyers.reject { |f| f.miles_flown >= 3000}
# puts incentive


# gold_status = flyers.any? { |f| f.status == :platinum}
# puts gold_status

# bronze_status = flyers.detect { |f| f.status == :bronze}

# puts bronze_status

# platinum, others = flyers.partition { |f| f.status == :platinum}

# puts "Platinum:"
# puts "#{platinum}"
# puts "Others:"
# puts others


# flyers.map { |f| puts "#{f.name} (#{f.status.upcase})" }


# totals_in_kms = flyers.map { |flyer| flyer.miles_flown * 1.6 }.reduce(0, :+)
# p totals_in_kms

# totals = flyers.map { |flyer| flyer.miles_flown }.reduce(0, :+)
# p totals


# total_bronze_kms_flown = flyers.select { |f| f.status == :bronze }.map { |f| f.miles_flown * 1.6 }.reduce(:+)

top_flyer = flyers.max_by { |f| f.miles_flown }
puts "Top Flyer: #{top_flyer}"

min_flyer = flyers.min_by { |f| f.miles_flown }
puts "Top Flyer: #{min_flyer}"

