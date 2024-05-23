# frozen_string_literal: true

# organizing a lottery problem
def organizing_a_lottery(segments, points)
  result = []
  count = 0
  segments.sort_by! { |n1, _| n1 }
  points.each do |point|
    segments.each do |segment|
      break if point < segment[0] || point > segments.last[1]

      count += 1 if point >= segment[0] && point <= segment[1]
    end
    result << count
    count = 0
  end
  result.join(' ')
end



# input
input = gets("\t\n").chomp.split("\n")
input1 = input[0].split.map(&:to_i)
n_segments = input1[0]
_ = input1[1]
segments = []
(1..n_segments).each do |i|
  segments << input[i].split.map(&:to_i)
end
points = input[n_segments + 1].split.map(&:to_i)

print organizing_a_lottery(segments, points)
