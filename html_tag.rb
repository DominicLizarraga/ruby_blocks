require 'benchmark'


def time_it(name)
  elapsed_time = Benchmark.realtime do
    yield
  end
  puts "#{name} took #{elapsed_time}"
end

time_it("hello") {|number| puts number }
