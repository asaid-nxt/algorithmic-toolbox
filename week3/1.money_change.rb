# frozen_string_literal: true

# money change problem
def change(money, coins)
  return 0 if money.zero?

  coin = coins.select { |c| c <= money }.first
  1 + change(money - coin, coins)
end

input = gets.chomp.to_i
print change input, [10, 5, 1]
