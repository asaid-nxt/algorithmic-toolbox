# frozen_string_literal: true

# max revenue problem
def max_revenue(costs, clicks)
  costs.zip(clicks).map { |cost, click| cost * click }.sum
end



# getting input from coursera
input = gets("\t\n").chomp.split("\n")
costs = input[1].split.map(&:to_i).sort.reverse
clicks = input[2].split.map(&:to_i).sort.reverse

print max_revenue(costs, clicks)
