# frozen_string_literal: true

require './dates'

RSpec.describe Dates do
  it 'should return right values' do
    a = Dates.new(%w[2020-12-12 2021-12-12 2022-10-23])
    a.find_nearest
    expect(a.get).to eq('2022-10-23')
  end

  it 'should return right values through MonthError' do
    a = Dates.new(%w[2020-13-12 2021-12-12 2022-10-23])
    a.find_nearest
    expect(a.get).to eq('2022-10-23')
  end

  it 'should return right values through DayError' do
    a = Dates.new(%w[2020-10-33 2021-12-12 2022-10-23])
    a.find_nearest
    expect(a.get).to eq('2022-10-23')
  end

  it 'should return right values through future day' do
    a = Dates.new(%w[2020-10-29 2021-12-12 2022-10-23])
    a.find_nearest
    expect(a.get).to eq('2022-10-23')
  end
end
