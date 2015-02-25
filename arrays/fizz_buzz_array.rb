#!/usr/bin/env ruby

def fizzbuzzer(number)
  fizzbuzz = "#{'Fizz' if number % 3 == 0}#{'Buzz' if number % 5 == 0}"
  fizzbuzz = number if fizzbuzz == ''
  fizzbuzz
end

(1..100).each { |number| puts fizzbuzzer(number) }
