# frozen_string_literal: true

# fibonacci partial sum last digit problem
def fibonacci_sum_last_digit(m, n)
  return 0 if n.zero?

  pisano_period = 60

  last_digits = [0, 1]
  (2..pisano_period).each do |i|
    last_digits[i] = (last_digits[i - 1] + last_digits[i - 2]) % 10
  end

  m %= pisano_period
  n %= pisano_period
  n += pisano_period if m > n

  # Calculate the sum of last digits from F_m to F_n modulo 10
  sum = 0
  (m..n).each do |i|
    sum = (sum + last_digits[i % pisano_period]) % 10
  end

  sum
end

m, n = gets.split.map(&:to_i)
print fibonacci_sum_last_digit m, n
