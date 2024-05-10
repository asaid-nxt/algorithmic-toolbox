# frozen_string_literal: true

# sum method
def sum(num1, num2)
  num1 + num2
end

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
print sum a, b
