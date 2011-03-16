# Problem 5
# 30 November 2001
#
# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

require '../lib/primes'
include Prime

signatures = (1..20).map { |n| Prime::prime_signature(n) }
combined_signature = []
signatures.each do |sig|
  sig.each_with_index do |n,i|
    combined_signature[i] ||= []
    combined_signature[i] << n
  end
end
number = 1
max_signature = combined_signature.map { |v| v.max }
max_signature.each_with_index do |n,i|
  number *= Prime::Primelist[i] ** n
end
puts number
