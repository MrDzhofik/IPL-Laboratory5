# frozen_string_literal: true

# test for Part 1
require './main'
require './get_input'

RSpec.describe Calculate do
  before(:example) do
    include Math
    @x = rand(10)
  end

  it 'should return right values with 3' do
    a = Calculate.new(3)
    a.calc
    expect(a.get.round(2)).to eq(2278.13)
  end

  it 'should return right values with 0' do
    b = Calculate.new(0)
    b.calc
    expect(b.get.round(1)).to eq(0.3)
  end

  it 'should return right values with 10' do
    c = Calculate.new(10)
    c.calc
    expect(c.get.round(2)).to eq(-17_928.85)
  end
end
