#!/usr/bin/ruby -w

# see https://projecteuler.net/problem=27 for prompt

require 'prime'

max_n = 0
a_b = Array.new(2)

(-1000..1000).each do |a|
  (-1000..1000).each do |b|
    n = 1
    while (n ** 2 + a * n + b).prime?
      n += 1
      if n > max_n
        max_n = n
        a_b[0] = a
        a_b[1] = b
      end
    end
  end
end

puts a_b[0] * a_b[1]