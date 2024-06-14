# frozen_string_literal: true

# Inversion problem
def count_inversions(arr)
  _, count = merge_sort_and_count(arr)
  count
end

def merge_sort_and_count(arr)
  return [arr, 0] if arr.length <= 1

  mid = arr.length / 2
  left, left_count = merge_sort_and_count(arr[0...mid])
  right, right_count = merge_sort_and_count(arr[mid..])
  merged, split_count = merge_and_count(left, right)

  [merged, left_count + right_count + split_count]
end

def merge_and_count(left, right)
  merged = []
  count = 0
  i = 0
  j = 0

  while i < left.length && j < right.length
    if left[i] <= right[j]
      merged << left[i]
      i += 1
    else
      merged << right[j]
      count += left.length - i # Count the inversions
      j += 1
    end
  end

  # Append the remaining elements
  merged.concat(left[i..]) if i < left.length
  merged.concat(right[j..]) if j < right.length

  [merged, count]
end

# Input reading
_ = gets.to_i
arr = gets.split.map(&:to_i)

# Main
print count_inversions(arr)
