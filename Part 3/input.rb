# frozen_string_literal: true

require './converter'

print 'Enter a string: '
string = gets.split
print 'Enter a numbers: '
number = gets.split
a = Converter.new(string, number)
a.convert
puts a.get
