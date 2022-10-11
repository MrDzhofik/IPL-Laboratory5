require './main'
include Math

RSpec.describe Calculate do
  before(:example) do
    @x = rand(10)
    @y = exp(@x) / tan(@x**3 - 5) + @x**2
  end

  it 'should return right values' do
    expo = exp(1)**@x
    tang = tan(@x**3 - 5)
    res = expo / tang + @x**2
    expect(res.round(2)).to eq(@y.round(2))
  end
end
