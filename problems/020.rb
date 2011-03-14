# Problem 20 
# 21 June 2002
#
# n! means n * (n . 1) * ... * 3 * 2 * 1
# 
# Find the sum of the digits in the number 100!

require '../lib/combinatorics'

total = 0
factorial(100).to_s.each_byte do |ch| 
  total +=  (ch - ?0)
end

puts total


