#!/usr/bin/env ruby

# A way to keep track of purchases.
class CashRegister
  def initialize(total = 0.0)
    @total = total.to_f
  end

  def total
    puts format('%.2f', @total)
  end

  def purchase(cost)
    puts format('%.2f', @total += cost)
  end

  def pay(payment)
    if payment > @total
      change = payment - @total
      @total = 0.0
      puts "Your change is $#{format('%.2f', change)}"
    else
      # new total
      @total -= payment
      puts "Your new total is $#{format('%.2f', @total)}"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Example One:"
  register = CashRegister.new
  register.total
  register.purchase(3.78)
  register.total
  register.pay(5.00)
  register.total

  puts "Example Two:"
  register2 = CashRegister.new
  register2.total
  register2.purchase(3.78)
  register2.purchase(5.22)
  register2.total
  register2.pay(5.00)
  register2.total
  register2.pay(5.00)
  register2.total
end
