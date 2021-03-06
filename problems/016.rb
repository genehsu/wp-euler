# Problem 16
# 03 May 2002
#
# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2**1000?

sum = 0
(1<<1000).to_s.each_char do |c|
  sum += c.to_i
end
puts sum
