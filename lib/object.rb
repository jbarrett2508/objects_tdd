class Run
  def initialize(miles, time)
    @miles = miles #number of miles run
    @time = time #number of hours run
  end
  def pace
    @pace = @miles / @time
    puts "Your pace is #{@pace} miles per hour."

    if @pace <= 6.0
      puts "Speed up!"
    end

    if @pace >= 8.0
      puts "Slow down!"
    end

    if @pace == 0
      puts "Nice job! You're done!"
    end
  end
end

run1 = Run.new(6.0, 1.25)
puts run1.pace
run2 = Run.new(5.0, 1.25)
puts run2.pace
run3 = Run.new(7.5, 1.00)
puts run3.pace
run4 = Run.new(8.2, 1.00)
puts run4.pace
