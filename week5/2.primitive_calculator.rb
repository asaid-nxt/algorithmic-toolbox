# frozen_string_literal: true

# primitive calculator problem
def primitive_calculator(n)
  operations = Array.new(n + 1, Float::INFINITY)
  operations[1] = 0
  operations[1] = 0
  sequence = Array.new(n + 1)

  (2..n).each do |i|
    if (i % 3).zero? && operations[i / 3] + 1 < operations[i]
      operations[i] = operations[i / 3] + 1
      sequence[i] = i / 3
    end
    if (i % 2).zero? && operations[i / 2] + 1 < operations[i]
      operations[i] = operations[i / 2] + 1
      sequence[i] = i / 2
    end
    if operations[i - 1] + 1 < operations[i]
      operations[i] = operations[i - 1] + 1
      sequence[i] = i - 1
    end
  end

  result_sequence = []
  current = n
  while current != 1
    result_sequence << current
    current = sequence[current]
  end
  result_sequence << 1
  result_sequence.reverse!

  puts operations[n]
  puts result_sequence.join(' ')
end

# Main
n = gets.to_i
primitive_calculator(n)

