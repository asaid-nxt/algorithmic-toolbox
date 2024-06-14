# frozen_string_literal: true

# lcs 3 problem
def lcs3(a, b, c)
  n = a.size
  m = b.size
  l = c.size

  # Create a 3D array initialized to 0
  dp = Array.new(n + 1) { Array.new(m + 1) { Array.new(l + 1, 0) } }

  # Fill the dp table
  (1..n).each do |i|
    (1..m).each do |j|
      (1..l).each do |k|
        if a[i-1] == b[j-1] && a[i-1] == c[k-1]
          dp[i][j][k] = dp[i-1][j-1][k-1] + 1
        else
          dp[i][j][k] = [dp[i-1][j][k], dp[i][j-1][k], dp[i][j][k-1]].max
        end
      end
    end
  end

  dp[n][m][l]
end

# Read input
_ = gets.to_i
a = gets.split.map(&:to_i)
_ = gets.to_i
b = gets.split.map(&:to_i)
_ = gets.to_i
c = gets.split.map(&:to_i)

# Output
puts lcs3(a, b, c)
