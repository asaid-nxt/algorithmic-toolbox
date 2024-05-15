# frozen_string_literal: true

# car fueling problem
def car_fueling(distance, miles, n, stops)
  stops << distance
  refill_tank = 0
  location = 0
  fuel = miles
  (0..n).each do |i|
    if stops[i] - location > fuel
      refill_tank += 1
      fuel = miles
      return -1 if stops[i] - location > fuel
    end
    fuel -= (stops[i] - location)
    location = stops[i]
  end
  refill_tank
end


# getting input from coursera
input = gets("\t\n").chomp.split("\n")
distance = input[0].to_i
miles = input[1].to_i
n = input[2].to_i
stops = input[3].split.map(&:to_i)

print car_fueling(distance, miles, n, stops)
