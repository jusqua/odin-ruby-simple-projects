# frozen_string_literal: true

def stock_picker(days)
  days.each_with_index.reduce([0, 0]) do |pair, (buy, i)|
    days.drop(i + 1).each.with_index(i + 1) do |sell, j|
      pair = [i, j] if sell - buy > days[pair[1]] - days[pair[0]]
    end
    pair
  end
end

days = [17, 3, 6, 9, 15, 8, 6, 1, 10]

puts stock_picker(days)
