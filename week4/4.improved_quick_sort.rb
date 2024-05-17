# frozen_string_literal: true

# improving quick sort problem
def improved_quick_sort(arr)
  return arr if arr.size < 2 || arr.uniq.size < 2

  i = rand(arr.size)
  pivot = arr[i]
  arr.delete_at(i)
  a, b = arr.partition { |n| n <= pivot }
  improved_quick_sort(a) + [pivot] + improved_quick_sort(b)
end


# input
input = gets("\t\n").chomp.split("\n")
_ = input[0].to_i
arr = input[1].split.map(&:to_i)

print improved_quick_sort(arr).join(' ')
