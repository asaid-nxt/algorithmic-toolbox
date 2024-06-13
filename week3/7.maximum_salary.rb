# frozen_string_literal: true

# maximum salary problem
def max_salary(nums)
  nums = nums.map(&:to_s)

  sorted_nums = nums.sort do |a, b|
    (b + a) <=> (a + b)
  end

  largest_num = sorted_nums.join
  largest_num[0] == '0' ? '0' : largest_num
end



# Input
n = gets.to_i
nums = gets.split.map(&:to_i)

puts max_salary(nums)
