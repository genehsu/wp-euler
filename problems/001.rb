# Problem 1
# 05 October 2001
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

sum = 0
1000.times do |n|
  next if n % 3 > 0 && n % 5 > 0
  sum += n
end
puts sum

def triangle(n)
  n * (n+1) / 2
end
def sum_multiples_of_n_below_limit(limit,n)
  triangle( limit/n ) * n
end
Max = 1000-1
sum = sum_multiples_of_n_below_limit(Max,3) \
	+ sum_multiples_of_n_below_limit(Max,5) \
	- sum_multiples_of_n_below_limit(Max,15)
puts sum
