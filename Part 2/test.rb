# frozen_string_literal: true

require './dates'

RSpec.describe Dates do
  before(:example) do
    @now = Time.now
    @maxi = 0
    @now_days = @now.year * 365 + @now.month * 30 + @now.day
    @arr = []
    @index = 0
    5.times do
      year = rand(2016..2022)
      month = rand(1..12)
      day = rand(1..28)
      date = "#{year}-#{month}-#{day}"
      @arr.append(date)
    end
  end

  it 'should return right values' do
    a = Dates.new(@arr)
    @arr.each.with_index do |x, index|
      year, month, day = x.split('-').map { |num| num.to_i }
      days = year * 365 + month * 30 + day
      if (@now_days > days) && (days > @maxi)
        @maxi = days
        @index = index
      end
    end
    @res = @arr[@index]
    a.find_nearest
    p a.get, @res
    expect(a.get).to eq(@res)
  end
end
