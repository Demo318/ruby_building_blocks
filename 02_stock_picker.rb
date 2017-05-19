def stock_picker (value_by_days)
  best_profit = 0
  low_day = 0
  high_day = 0
  value_by_days.each_with_index do |x, i| #is low day?
    value_by_days.each_with_index do |y, j| #is high day?
      test_profit = y - x
      if i < j && test_profit > best_profit
        best_profit = test_profit
        low_day = i
        high_day = j
      end
    end
  end
  puts "Buy on day #{low_day + 1} and sell on day #{high_day + 1} for a profit of $#{value_by_days[high_day] - value_by_days[low_day]}."
  return [low_day, high_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])
