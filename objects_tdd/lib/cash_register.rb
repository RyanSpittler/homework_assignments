class CashRegister
  def initialize(total = 0.0)
    @total = total.to_f
  end

  def total
    "Your total is $#{format('%.2f', @total)}."
  end

  def purchase(amount)
    @total += amount
  end

  def payment(amount)
    if @total > amount
      @total -= amount
      "Your new total is $#{format('%.2f', @total)}."
    else
      change = amount - @total
      @total = 0
      "Your change is $#{format('%.2f', change)}."
    end
  end
end
