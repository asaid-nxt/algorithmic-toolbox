# frozen_string_literal: true

# maximum pairwise product problem
def max_pairwise_product(numbers)
  numbers.map(&:to_i).max(2).inject(:*)
end

_ = gets.chomp
input = gets.chomp
numbers = input.split
print max_pairwise_product(numbers)
