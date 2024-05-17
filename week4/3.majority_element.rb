# frozen_string_literal: true

# majority element problem
def majority_element(n, array)
  return 1 if array.tally.values.any? { |v| v > n / 2 }

  0
end



# input
input = gets("\t\n").chomp.split("\n")
n = input[0].to_i
array = input[1].split.map(&:to_i)

print majority_element(n, array)
