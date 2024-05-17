# frozen_string_literal: true

# binary search duplicates problem
def binary_search_duplicates(array, low, high, number)
  if high >= low
    mid = low + (high - low) / 2
    guess = array[mid]
    if guess == number
      if array[mid] == array[mid - 1] && mid != 0
        binary_search(array, low, mid - 1, number)
      else
        mid
      end
    elsif guess < number
      binary_search array, mid + 1, high, number
    else
      binary_search array, low, mid - 1, number
    end
  else
    -1
  end
end


def binary_search_array(array, low, high, search_array)
  result = []
  search_array.each do |number|
    result << binary_search(array, low, high, number)
  end
  result.join(' ')
end


# getting input from coursera
input = gets("\t\n").chomp.split("\n")
n1 = input[0].to_i
array = input[1].split.map(&:to_i)
_ = input[2].to_i
search_array = input[3].split.map(&:to_i)

print binary_search_array(array, 0, n1 - 1, search_array)
