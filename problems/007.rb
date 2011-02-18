# Problem 7
# 28 December 2001
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10001st prime number?

require 'primes'

nth = 10001

while Prime::Primelist.size < nth
  Prime._grow
end
puts Prime::Primelist[nth-1]
