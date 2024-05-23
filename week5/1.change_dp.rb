# frozen_string_literal: true

# money change again problem
def change(money, coins)
  return 0 if money.zero?

  coin = coins.select { |c| c <= money }.first
  1 + change(money - coin, coins)
end

def change_dp(money, coins)
  return change(money, coins) if money < 6

  money_hash = {}
  (6..money).each do |m|
    min_change = change(m, coins)
    coins.each do |coin|
      coins_count = change(m - coin, coins) + 1
      min_change = coins_count if coins_count < min_change
    end
    money_hash[m] = min_change
  end
  money_hash[money]
end


# input
input = gets.chomp.to_i

print change_dp(input, [4, 3, 1])
