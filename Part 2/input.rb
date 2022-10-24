# frozen_string_literal: true

# get input
require './dates'

puts 'year-month-day:'
date = gets
a = Dates.new(date.split)
a.find_nearest
puts a.get
