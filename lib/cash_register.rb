class CashRegister

  def initialize
    @balance = 0.00
  end

  def total
    @balance
  end

  def purchase(price)
    @balance = @balance + price
  end

  def pay(price)
    @balance = price - @balance
  end
end

register1 = CashRegister.new
puts register1.total
puts "Your total is #{register1.purchase(3.45)}"
puts register1.total
puts "Your change is #{register1.pay(5.45)}"
