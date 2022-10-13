# Class
class Dates
  def initialize(arr)
    @arr = arr
    @now = Time.now
    @mins = [100, 100, 100]
    @now_days = @now.year * 365 + @now.month * 30 + @now.day
    @index = 0
    @maxi = 0
  end

  def find_nearest
    @arr.each.with_index do |x, index|
      year, month, day = x.split('-').map { |num| num.to_i }
      r_year = @now.year - year
      r_month = @now.month - month
      r_day = @now.day - day
      if 0 <= r_year && r_year < @mins[0]
        @mins[0] = r_year
        @mins[1] = r_month.abs
        @mins[2] = r_day.abs
        @index = index

      elsif (r_year == @mins[0]) && (0 <= r_month && r_month < @mins[1])
        @mins[0] = r_year
        @mins[1] = r_month
        @mins[2] = r_day.abs
        @index = index

      elsif (r_year == @mins[0]) && (r_month == @mins[1]) && (0 <= r_day && r_day <= @mins[2])
        @mins[0] = r_year
        @mins[1] = r_month
        @mins[2] = r_day
        @index = index
      end
    end
    p @arr
  end

  def get
    @arr[@index]
  end
end
