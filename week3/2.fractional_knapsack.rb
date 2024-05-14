# frozen_string_literal: true

# knapsack problem
def fractional_knapsack(n, capacity, items)
  return 0 if capacity.zero? || items.empty?

  value, weight = items.shift
  amount = [capacity, weight].min
  ((value * amount) + fractional_knapsack(n, capacity - amount, items)).round(3)
end

# getting input from coursera
input = gets("\t\n").chomp.split("\n")
input1 = input[0].split.map(&:to_i)
n = input1[0]
capacity = input1[1]
costs = []
weights = []
(1...input.size).each do |i|
  costs << input[i].split(' ')[0].to_i
  weights << input[i].split(' ')[1].to_i
end

cpw = costs.map.with_index { |c, i| c.to_f / weights[i] }
items = cpw.zip(weights).sort_by { |c, _| c }.reverse.to_h
print fractional_knapsack n, capacity, items

