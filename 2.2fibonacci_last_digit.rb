# frozen_string_literal: true

# fibonacci number problem
def fibonacci_last_digit(n)
  f = Array.new(n)
  f[0] = 0
  f[1] = 1
  (2..60).each { |i| f[i] = f[i - 1] + f[i - 2] }
  f[n % 60].to_s[-1].to_i
end

input = gets.chomp.to_i
print fibonacci_last_digit input
