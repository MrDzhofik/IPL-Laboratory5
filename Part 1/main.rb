# frozen_string_literal: true

# Calculator
class Calculate
  include Math

  def initialize(number)
    @x = number
  end

  def calc
    @ex = exp(@x)
    @tang = tan(@x**3 - 5)
    @y = @ex / @tang + @x**2
  end

  def get
    @y
  end

  def prt
    puts "x: #{@x}"
    puts "exponenta: #{@ex}"
    puts "tangent: #{@tang}"
    puts "Finally: #{@y.round(2)}"
  end
end
