# frozen_string_literal: true

# DayError executes when input days is big
class DayError < StandardError; end
# MonthError executes when input month is big
class MonthError < StandardError; end

# class Dates find the nearest date
class Dates
  def initialize(arr)
    @arr = arr
    @now = Time.now
    @index = 0
    @maxi = 0
  end

  def find_nearest
    @arr.each.with_index do |elem, index|
      year, month, day = elem.split('-').map(&:to_i)
      # if check(month, day)
        days = year * 365 + month * 30 + day
        if ((@now.year * 365 + @now.month * 30 + @now.day) >= days) && (days > @maxi)
          @maxi = days
          @index = index
        end
      # end
    end
  end

  def get
    @arr[@index]
  end
end

# def check(month, day)
#   raise DayError, 'Too much days' if day > 30 || day <= 0
#   raise MonthError, 'Too much months' if month > 12 || month <= 0

#   1
# rescue DayError
#   puts "\nDay should be between 1 and 30"
#   0
# rescue MonthError
#   puts "\nMonth should be between 1 and 12"
#   0
# end
