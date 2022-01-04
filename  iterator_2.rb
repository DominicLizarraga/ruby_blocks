
def n_times
  1.upto(3) do |count|
    yield count
  end
end

n_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end
