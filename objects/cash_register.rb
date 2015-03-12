#!/usr/bin/env ruby

# A way to keep track of purchases.
class CashRegister
  def initialize(total = 0.0)
    @total = total.to_f
  end

  def total
    dollars(@total)
  end

  def purchase(cost)
    @total += cost
    "You buy #{dollars(cost)}. Your total is now #{total}."
  end

  def pay(payment)
    string = "You pay #{dollars(payment)}. "
    if payment > @total
      change = payment - @total
      @total = 0.0
      string << "Your change is #{dollars(change)}"
    else
      @total -= payment
      string << "Your new total is #{total}"
    end
  end
  
  def dollars(amount)
    '$' + format('%.2f', amount)
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Example One:"
  register = CashRegister.new
  puts register.total
  puts register.purchase(3.78)
  puts register.total
  puts register.pay(5.00)
  puts register.total

  puts "Example Two:"
  register2 = CashRegister.new
  puts register2.total
  puts register2.purchase(3.78)
  puts register2.purchase(5.22)
  puts register2.total
  puts register2.pay(5.00)
  puts register2.total
  puts register2.pay(5.00)
  puts register2.total
end
