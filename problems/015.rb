# Problem 15
# 19 April 2002
#
# Starting in the top left corner of a 2×2 grid, there are 6 routes (without
# backtracking) to the bottom right corner.
# 
# <img/015.gif>
#
# How many routes are there through a 20×20 grid?

ways = 1
(1..20).each do |n|
  ways *= n + 20
  ways /= n
end

puts ways
