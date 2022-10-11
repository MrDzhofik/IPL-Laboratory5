# Calculator
class Calculate
  include Math

  def initialize(x)
    @x = x
  end

  def calc
    @ex = exp(@x)
    @tang = tan(@x**3 - 5)
    @y = @ex / @tang + @x**2
  end

  def prt
    puts "x: #{@x}"
    puts "exponenta: #{@ex}"
    puts "tangent: #{@tang}"
    puts "Finally: #{@y}"
  end
end

x = gets.to_f
a = Calculate.new(x)
a.calc
a.prt
