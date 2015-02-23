#!/usr/bin/env ruby

def sing_a_verse(number1, number2)
  puts "#{number1} bottle#{'s' unless number1 == 1} of beer on the wall,"\
       " #{number1} bottle#{'s' unless number1 == 1} of beer."
  puts "Take one down and pass it around,"\
       " #{number2} bottle#{'s' unless number2 == 1} of beer on the wall."
  puts
end

def sing_last_verse
  puts "No more bottles of beer on the wall,"\
         " no more bottles of beer."
  puts "Go to the store and buy some more,"\
         " 99 bottles of beer on the wall."
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
