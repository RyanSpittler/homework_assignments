#!/usr/bin/env ruby

def fizzbuzzer(number)
  fizzbuzz = "#{'Fizz' if number % 3 == 0}#{'Buzz' if number % 5 == 0}"
  fizzbuzz = number if fizzbuzz == ''
  fizzbuzz
end

# (1..100).each { |number| puts fizzbuzzer(number) }
numbers = (1..100).to_a
fizz_buzz_array = numbers.map { |number| fizzbuzzer(number) }
puts fizz_buzz_array
