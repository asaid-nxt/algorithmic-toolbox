# frozen_string_literal

# edit distance problem
def edit_distance(a, b)
  n = a.length + 1
  matrix = Array.new(b.length + 1) { [0] * n }

  (0..b.length).each do |i|
    (0..a.length).each do |j|
      if i.zero? || j.zero?
        matrix[i][j] = matrix[i][j - 1] + 1 if i.zero? && !j.zero?
        matrix[i][j] = matrix[i - 1][j] + 1 if j.zero? && !i.zero?
      else
        if b[i - 1] == a[j - 1]
          matrix[i][j] = matrix[i - 1][j - 1]
        else
          matrix[i][j] = [matrix[i][j - 1], matrix[i - 1][j], matrix[i -1][j - 1]].min + 1
        end
      end
    end
  end
  matrix[b.length][a.length]
end


input = gets("\t\n").chomp.split("\n")
a = input[0]
b = input[1]

print edit_distance(a, b)
