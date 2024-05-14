# frozen_string_literal: true

# fibonacci sum last digit problem
def fibonacci_sum_last_digit(n)
  f = Array.new(60)
  (0..60).each do |i|
    f[i] = 0 if i.zero?
    f[i] = 1 if i == 1
    f[i] = f[i - 1] + f[i - 2] unless i < 2
  end
  f[0..n % 60].sum % 10
end

input = gets.chomp.to_i
print fibonacci_sum_last_digit input
