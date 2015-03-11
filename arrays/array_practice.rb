#!/usr/bin/env ruby

number_array = (1..10).to_a

puts <<END_OF_FIRST_STRING
#{number_array.join('...') + '...'}
T-#{number_array.reverse.join(', ')}...  BLASTOFF!
The last element is #{number_array.last}
The first element is #{number_array.first}
The third element is #{number_array[2]}
The element with an index of 3 is #{number_array[3]}
The second from last element is #{number_array[-2]}
The first four elements are '#{number_array.first(4).join(', ')}'
END_OF_FIRST_STRING

number_array.slice!(4..6)
puts "If we delete 5, 6 and 7 from the array, "\
     "we're left with [#{number_array.join(',')}]"

number_array.unshift(5)
puts "If we add 5 at the beginning of the array, "\
     "we're left with [#{number_array.join(',')}]"

number_array.push(6)
puts "If we add 6 at the end of the array, "\
     "we're left with [#{number_array.join(',')}]"

puts "Only the elements #{number_array.select { |number| number > 8 }} are > 8."

number_array.clear
puts "If we remove all the elements, "\
     "then the length of the array is #{number_array.size}"
