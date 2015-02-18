#!/usr/bin/env ruby

practice_string = "this is a string to practice with"

puts practice_string
puts practice_string.capitalize
puts practice_string.upcase
puts practice_string.capitalize.gsub("string", "'string'")
puts "The string '#{practice_string}' has #{practice_string.length} characters"
puts practice_string.reverse
portion_of_string = practice_string[20..27]
puts "#{portion_of_string} #{portion_of_string} #{portion_of_string}!"
