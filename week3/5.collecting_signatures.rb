# frozen_string_literal: true

# collecting signatures problem
def collecting_signatures(segments)
  points = []
  segments.each do |segment|
    points << segment[1] if points.empty? || points.last < segment[0] || points.last > segment[1]
  end
  "#{points.size}\n#{points.join(' ')}"
end


#getting input from coursera
input = gets("\t\n").chomp.split("\n")
_ = input[0]
segments = []
(1...input.size).each do |i|
  segment = input[i].split(' ').map(&:to_i)
  segments << segment
end
segments.sort_by! { |_, right| right }

print collecting_signatures(segments)
