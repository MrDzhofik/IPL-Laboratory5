# frozen_string_literal: true

# Errors
class DayError < StandardError; end
class MonthError < StandardError; end

# Dates
class Dates
  def initialize(arr)
    @arr = arr
    @now = Time.now
    @now_days = @now.year * 365 + @now.month * 30 + @now.day
    @index = 0
    @maxi = 0
  end

  def find_nearest
    @arr.each.with_index do |x, index|
      year, month, day = x.split('-').map(&:to_i)
      if check(month, day)
        days = year * 365 + month * 30 + day
        if (@now_days > days) && (days > @maxi)
          @maxi = days
          @index = index
        end
      end
    end
  end

  def get
    @arr[@index]
  end
end

def check(month, day)
  raise DayError, 'Too much days' if day > 30 || day <= 0
  raise MonthError, 'Too much months' if month > 12 || month <= 0

  1
rescue DayError
  puts "\nDay should be between 1 and 30"
  0
rescue MonthError
  puts "\nMonth should be between 1 and 12"
  0
end
