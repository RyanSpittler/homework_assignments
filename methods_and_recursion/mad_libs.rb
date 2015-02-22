#!/usr/bin/env ruby

# This helps to check whether 'a' or 'an' will be used.
class String
  def vowel?
    vowels = %w(a e i o u A E I O U)
    if vowels.include?(self)
      true
    else
      false
    end
  end
end

def ask_for_word(term, list_of_words)
  print "Give me a"
  if list_of_words.include?(term)
    print "nother"
  else
    print 'n' if term[0].vowel?
    list_of_words << term
  end
  puts " #{term}:"
  gets.strip
end

already_requested = []
mad_libs = []
needed_blanks = ['adjective',
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

puts "Here is your madlib:"
puts "A vacation is when you take a trip to some #{mad_libs[0]} place"
puts "with your #{mad_libs[1]} family. Usually you go to some place"
puts "that is near a/an #{mad_libs[2]} or up on a/an #{mad_libs[3]}."
puts "A good vacation place is one where you can ride #{mad_libs[4]}"
puts "or play #{mad_libs[5]} or go hunting for #{mad_libs[6]}. I like"
puts "to spend my time #{mad_libs[7]} or #{mad_libs[8]}."
puts "When parents go on a vacation, they spend their time eating"
puts "three #{mad_libs[9]} a day, and fathers play golf, and mothers"
puts "sit around #{mad_libs[10]}. Last summer, my little brother"
puts "fell in a/an #{mad_libs[11]} and got poison #{mad_libs[12]} all"
puts "over his #{mad_libs[13]}. My family is going to go to (the)"
puts "#{mad_libs[14]}, and I will practice #{mad_libs[15]}. Parents"
puts "need vacations more than kids because parents are always very"
puts "#{mad_libs[16]} and because they have to work #{mad_libs[17]}"
puts "hours every day all year making enough #{mad_libs[18]} to pay"
puts "for the vacation."
