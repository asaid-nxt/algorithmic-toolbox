# frozen_string_literal: true

# fibonacci number again problem (huge number)
def pisano_period(m)
  prev = 0
  curr = 1
  (0...(m * m)).each do |i|
    prev, curr = curr, (prev + curr) % m
    return i + 1 if prev.zero? && curr == 1
  end
end

def fibonacci_mod(n, m)
  pisano = pisano_period(m)
  n %= pisano

  return n if n <= 1

  prev = 0
  curr = 1
  (n - 1).times do
    prev, curr = curr, (prev + curr) % m
  end
  curr
end

# input
input = gets.chomp.split.map(&:to_i)
n = input[0]
m = input[1]
print fibonacci_mod n, m

