#!/usr/bin/env ruby

def bottles_line(number, wall = true)
  "#{number} bottle#{'s' unless number == 1} of beer#{' on the wall' if wall}"
end

def sing_a_verse(number1, number2)
  puts "#{bottles_line(number1)}, #{bottles_line(number1, false)}."
  puts "Take one down and pass it around, #{bottles_line(number2)}."
  puts ''
end

def sing_last_verse
  puts "#{bottles_line('No more')}, #{bottles_line('no more', false)}."
  puts "Go to the store and buy some more, #{bottles_line(99)}."
end

def sing_a_song(remaining)
  if remaining >= 2
    sing_a_verse(remaining, remaining - 1)
  elsif remaining == 1
    sing_a_verse(remaining, 'no more')
  else
    sing_last_verse
  end
  sing_a_song(remaining - 1) if remaining > 0
end

sing_a_song(99)
