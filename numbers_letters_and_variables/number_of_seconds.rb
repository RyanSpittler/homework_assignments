#!/usr/bin/env ruby

seconds_in_a_minute = 60
minutes_in_an_hour = 60
hours_in_a_day = 24
days_in_a_week = 7

puts "There are #{seconds_in_a_minute} seconds in a minute"
puts "There are #{minutes_in_an_hour} minutes in an hour"
puts "There are #{hours_in_a_day} hours in a day"
puts "There are #{days_in_a_week} days in a week"

seconds_in_an_hour = seconds_in_a_minute * minutes_in_an_hour
seconds_in_a_day = seconds_in_an_hour * hours_in_a_day
seconds_in_a_week = seconds_in_a_day * days_in_a_week

puts "That means there are:
  #{seconds_in_an_hour} seconds in an hour,
  #{seconds_in_a_day} seconds in a day,
  #{seconds_in_a_week} seconds in a week"

weeks_in_a_year = 52
twenty = 20
hundred = 100
seconds_in_twenty_years = seconds_in_a_week * weeks_in_a_year * twenty
seconds_in_a_hundred_years = seconds_in_a_week * weeks_in_a_year * hundred

puts "That means when you turn #{twenty}, "\
"you've been alive for #{seconds_in_twenty_years} seconds,"
puts "and if you make it to #{hundred}, "\
"you will have lived #{seconds_in_a_hundred_years} seconds. Make them count!"
