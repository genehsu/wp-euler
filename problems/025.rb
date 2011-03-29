# Problem 25
# 30 August 2002
# 
# The Fibonacci sequence is defined by the recurrence relation:
# 
# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# 
# Hence the first 12 terms will be:
# 
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# 
# The 12th term, F12, is the first term to contain three digits.
# 
# What is the first term in the Fibonacci sequence to contain 1000 digits?

require '../lib/fib'
require 'bigdecimal'
require 'bigdecimal/math'
include BigMath

n = 1
while true do
  top = BigMath.log( Fib.big_fib(n),5) 
  bottom = BigMath.log(10,5) 
  digits = ( top / bottom).to_i + 1 
  puts top, bottom
  break if digits >= 1000 
  n += 1 
end

puts n

