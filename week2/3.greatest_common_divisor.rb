# frozen_string_literal: true

# greatest common divisor problem
def gcd(a, b)
  return a if b.zero?

  a_reminder = (a % b)
  gcd b, a_reminder
end

input = gets.chomp.split.map(&:to_i)
print gcd input[0], input[1]
