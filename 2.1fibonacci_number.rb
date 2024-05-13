# frozen_string_literal: true

# fibonacci number problem
def fibonacci(n)
  f = []
  f[0] = 0
  f[1] = 1
  (2..n).each { |i| f[i] = f[i - 1] + f[i - 2] }
  f[n]
end

input = gets.chomp.to_i
print fibonacci input
