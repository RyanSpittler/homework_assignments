#!/usr/bin/env ruby

def fizzbuzzer(number)
  if number % 3 == 0 || number % 5 == 0
    "#{'Fizz' if number % 3 == 0}#{'Buzz' if number % 5 == 0}"
  else
    number
  end
end

(1..100).each { |number| puts fizzbuzzer(number) }
