def five_teams(number)
  1.upto(number) do |count|
    yield count
  end
end

five_teams(6) do |n|
  puts "#{n} sitdown"
end
