
def with_debugging
  puts "Got Here!"
  result = yield
  puts "Result was #{result}"
end

with_debugging do
  magic_number = (23 - Time.now.hour) * Math::PI
end


def with_expectation(expected_value)
  puts "Running test..."
  result = yield
  if result == expected_value
    puts "Passed."
  else
    puts "Failed!"
    puts "Expected #{expected_value}, but got #{result}."
  end
end

with_expectation(4) { 2 + 2 }

def time_it(name)
  elapsed_time = Benchmark.realtime do
    yield
  end
  puts "#{name} took #{elapsed_time}"
end
