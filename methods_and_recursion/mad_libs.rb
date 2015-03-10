#!/usr/bin/env ruby

def ask_for_word(term, already_requested)
  print 'Give me a'
  if already_requested.include?(term)
    print 'nother'
  else
    vowels = %w(a e i o u A E I O U)
    print 'n' if vowels.include?(term[0])
    already_requested << term
  end
  puts " #{term}:"
  gets.strip
end

already_requested = []
mad_libs = []
needed_blanks = [
  'adjective',
  'adjective',
  'noun',
  'noun',
  'plural noun',
  'game',
  'plural noun',
  "verb ending in 'ing'",
  "verb ending in 'ing'",
  'plural noun',
  "verb ending in 'ing'",
  'noun',
  'plant',
  'part of the body',
  'place',
  "verb ending in 'ing'",
  'adjective',
  'number',
  'plural noun'
]

needed_blanks.each do |term|
  mad_libs << ask_for_word(term, already_requested)
end

puts <<END_OF_MADLIB
Here is your madlib:
A vacation is when you take a trip to some #{mad_libs[0]} place
with your #{mad_libs[1]} family. Usually you go to some place
that is near a/an #{mad_libs[2]} or up on a/an #{mad_libs[3]}.
A good vacation place is one where you can ride #{mad_libs[4]}
or play #{mad_libs[5]} or go hunting for #{mad_libs[6]}. I like
to spend my time #{mad_libs[7]} or #{mad_libs[8]}.
When parents go on a vacation, they spend their time eating
three #{mad_libs[9]} a day, and fathers play golf, and mothers
sit around #{mad_libs[10]}. Last summer, my little brother
fell in a/an #{mad_libs[11]} and got poison #{mad_libs[12]} all
over his #{mad_libs[13]}. My family is going to go to (the)
#{mad_libs[14]}, and I will practice #{mad_libs[15]}. Parents
need vacations more than kids because parents are always very
#{mad_libs[16]} and because they have to work #{mad_libs[17]}
hours every day all year making enough #{mad_libs[18]} to pay
for the vacation.
END_OF_MADLIB
