# Problem 14
# 05 April 2002
#
# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem), it
# is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

def next_number(n)
  if n%2 == 0
	n/2
  else
    3*n+1
  end
end

max_length = 0
max_n = 1
sequence_lengths = { 1 => 1 }
(2..1_000_000).each do |n|
  length = 1
  m = n
  while m != 1
    if sequence_lengths[m]
      length += sequence_lengths[m]
      m = 1
    else
      m = next_number(m)
      length += 1
    end
  end
  sequence_lengths[n] = length
  if length > max_length
    max_n = n
    max_length = length
  end
end
puts [ max_n, max_length ]
