# frozen_string_literal: true

# lcs problem
def lcs(first, second)
  first.unshift('')
  second.unshift('')
  n1 , n2 = first.size, second.length
  table = Array.new(n1) { [0] * n2 }

  (1...n1).each do |x|
    (1...n2).each do |y|
      table[x][y] = first[x] == second[y] ? 1 + table[x - 1][y - 1] : [table[x - 1][y], table [x][y - 1]].max
    end
  end
  table[n1 - 1][n2 - 1]
end

# input
input = gets("\t\n").chomp.split("\n")
first_string = input[1].split
second_string = input[3].split

p lcs(first_string, second_string)
