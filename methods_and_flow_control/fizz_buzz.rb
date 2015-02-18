#!/usr/bin/env ruby

# Adding these methods to Integers makes the whole read easier.
class Fixnum
  def divisible_by?(divisor)
    if self % divisor == 0
      true
    else
      false
    end
  end

  def fizzbuzzer
    if self.divisible_by?(3) || self.divisible_by?(5)
      "#{'Fizz' if self.divisible_by?(3)}#{'Buzz' if self.divisible_by?(5)}"
    else
      self
    end
  end
end

(1..100).each { |number| puts number.fizzbuzzer }
