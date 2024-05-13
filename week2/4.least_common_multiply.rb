# frozen_string_literal: true

# least common multiply
def gcd(a, b)
  return a if b.zero?

  a_reminder = (a % b)
  gcd b, a_reminder
end

def lcm(a, b)
  (a * b) / gcd(a, b)
end

input = gets.chomp.split.map(&:to_i)
print lcm input[0], input[1]
