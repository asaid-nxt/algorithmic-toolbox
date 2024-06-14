# frozen_string_literal: true

# organizing a lottery problem
def organizing_a_lottery(segments, points)
  events = []
  points.each_with_index do |point, index|
    events << [point, 'p', index]
  end
  segments.each do |segment|
    events << [segment[0], 'l']
    events << [segment[1], 'r']
  end

  # Sort events: points first, then starts, then ends
  events.sort_by! { |pos, type, _| [pos, type == 'l' ? 0 : (type == 'p' ? 1 : 2)] }

  count = 0
  result = Array.new(points.size, 0)

  events.each do |pos, type, index|
    case type
    when 'l'
      count += 1
    when 'r'
      count -= 1
    when 'p'
      result[index] = count
    end
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

# Output
print organizing_a_lottery(segments, points)
