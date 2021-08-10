
puts "please enter a number"
answer = gets.chomp.to_i

def n_times(number)
  1.upto(number) do |counter|
    yield counter
  end
end




n_times(answer) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end
