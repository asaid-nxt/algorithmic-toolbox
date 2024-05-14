# frozen_string_literal: true

# money change problem
def change(money, denominations: [10, 5, 1])
  return 0 if money.zero?

  denominations.shift until denominations.first <= money
  max = denominations.first
  1 + change(money - max, denominations: denominations)
end

input = gets.chomp.to_i
print change input
