# frozen_string_literal: true

require './converter'

RSpec.describe Converter do
  before(:example) do
    @words = []
    @numbers = []
    rand(1..5).times do
      @words.append(create_string)
    end
    create_number(@words, @numbers)
  end

  it 'should return inintially value' do
    a = Converter.new(@words, @numbers)
    a.convert
    expect(@words).to eq(unconvert(a.get, @numbers))
  end
end
