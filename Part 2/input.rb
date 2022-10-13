# get input
require './dates'

date = gets
a = Dates.new(date.split)
a.find_nearest
puts a.get
