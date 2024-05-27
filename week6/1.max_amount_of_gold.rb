# frozen_string_literal: true

# test problem
def max_amount_of_gold(gold, weight)
  weight += 1
  gold.unshift(0)
  n = gold.size
  table = Array.new(n) { [0] * weight }

  (1...n).each do |x|
    (1...weight).each do |y|
      table[x][y] = gold[x] <= y ? [table[x - 1][y], table[x - 1][y - gold[x]] + gold[x]].max : table[x - 1][y]
    end
  end
  table[n - 1][weight - 1]
end



# input
input = gets("\t\n").chomp.split("\n")
total_weight = input[0].split[0].to_i
gold = input[1].split.map(&:to_i)

p max_amount_of_gold(gold, total_weight)

