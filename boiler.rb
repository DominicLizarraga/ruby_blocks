class Sensor
  def temperature
    rand(100..200)
  end

  def water_level
    rand(1..5)
  end

end

sensor = Sensor.new

def checking(parameter)
  puts "Checking #{parameter} "
  result = yield
  if result
    puts "OK"
  else
    puts "FAILED"
  end
end

checking("temperature") { sensor.temperature < 150 }
checking("water_level") { sensor.water_level < 3 }



