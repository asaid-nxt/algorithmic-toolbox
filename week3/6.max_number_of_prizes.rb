# frozen_string_literal: true

# maximum number of prizes problem
def max_number_of_prizes(n)
  k = 1
  current_sum = 0
  numbers = []

  while current_sum + k <= n
    current_sum += k
    numbers << k
    k += 1
  end

  numbers[-1] += n - current_sum if current_sum < n

  [numbers.size, numbers]
end

input = gets.chomp.to_i
k, numbers = max_number_of_prizes(input)
puts k
puts numbers.join(' ')

