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

  promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }


1.upto(5) do |count|
  promotions.each do |key, value|

    flyer = Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count)
    puts "#{flyer.name.capitalize} - could earn #{flyer.miles_flown * value * 1000} miles by flying with #{key}"
  end

end

  # puts "Total of miles: #{sum}"


# 1.upto(10) do |count|
#   puts "#{count} alligator"
# end

# 1.upto(10) { |n| puts "#{n} alligator" }






# desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }

# desserts.each do |key, value|

#   puts "$#{value*2} for a cup of #{key}"
# end














