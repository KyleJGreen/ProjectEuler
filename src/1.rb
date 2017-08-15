#!/usr/bin/ruby -w

# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

index = 1
sum = 0

while index * 3 < 1000 do
  sum += index * 3
  if index * 5 < 1000 and not index * 5 % 3 == 0
    sum += index * 5
  end
  index += 1
end

puts sum