# test for Part 1
require './main'
require './get_input'
include Math

RSpec.describe Calculate do
  before(:example) do
    @x = rand(10)
  end

  it 'should return right values' do
    a = Calculate.new(@x)
    a.calc
    expo = exp(1)**@x
    tang = sin(@x**3 - 5) / cos(@x**3 - 5)
    res = expo / tang + @x**2
    puts "x: #{@x}"
    puts "exponenta: #{expo}"
    puts "tangent: #{tang}"
    puts "Finally: #{res.round(2)}"
    a.prt
    expect(res.round(2)).to eq(a.get.round(2))
  end
end
