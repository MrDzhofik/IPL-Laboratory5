# frozen_string_literal: true

# The Calculate class is responsible for ...
class Calculate
  # calculate value
  include Math

  def initialize(number)
    @xor = number
  end

  def get
    exp(@xor) / tan(@xor**3 - 5) + @xor**2
  end
end
