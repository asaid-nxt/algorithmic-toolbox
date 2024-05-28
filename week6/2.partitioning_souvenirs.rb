# frozen_string_literal: true

# partitioning souvenirs problem
def can_partition_subsets(arr, k)
  return false unless (arr.sum % k).zero? || arr.size < 3

  can_partition(0, arr, Array.new(arr.size, false), k, 0, arr.sum / k)
end

def can_partition(i, arr, used, k, in_progress_sum, target_sum )
  return true if k == 1

  return can_partition(0, arr, used, k - 1, 0, target_sum) if in_progress_sum == target_sum

  (i...arr.size).each do |j|
    unless used[j]
      used[j] = true
      return true if can_partition(j + 1, arr, used, k, in_progress_sum + arr[j], target_sum)

      used[j] = false
    end
  end

  false
end





# input
input = gets("\t\n").chomp.split("\n")
souvenirs = input[1].split.map(&:to_i)

if can_partition_subsets(souvenirs, 3)
  print 1
else
  print 0
end
