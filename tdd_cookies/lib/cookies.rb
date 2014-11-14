# This is an object I created for baking cookies!

class Cookies
  def initialize(temperature, baking_time, time_elapsed)
    @temperature = temperature
    @baking_time = baking_time
    @time_elapsed = time_elapsed
  end

  def temperature
    @temperature
  end

  def baking_time
    @baking_time
  end

  def temp_to_celcius
    (@temperature - 32) * (5.0 / 9)
  end

  def time_elapsed
    @time_elapsed
  end

  def time_remaining
    @baking_time - @time_elapsed
    # "There are #{@baking_time - @time_elapsed} minutes to go"
  end

  def not_done?
    @time_elapsed < @baking_time
  end

  def overdone?
    @time_elapsed > @baking_time
  end

  def check_cookies
    if not_done?
     "Bake for #{time_remaining} more minutes"
    elsif overdone?
      'NOOOOOO!!! Cookies are burnt!!!'
    else
      'DING!'
    end
  end
end

cookies1 = Cookies.new(375, 10, 5)

puts cookies1.baking_time
puts cookies1.temperature
puts cookies1.temp_to_celcius
puts cookies1.time_elapsed
puts cookies1.time_remaining
cookies1.check_cookies
