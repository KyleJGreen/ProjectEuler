#!/usr/bin/ruby -w

# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

number = 600851475143

(2..number).each do |n|
  if number % n == 0 and (number / n).prime?
    puts number / n
    break
  end
end