# Problem 67 
# 09 April 2004
#
# By starting at the top of the triangle below and moving to adjacent
# numbers on the row below, the maximum total from top to bottom is 23.
# 
# 3
# 7 4
# 2 4 6
# 8 5 9 3
# 
# That is, 3 + 7 + 4 + 9 = 23.
# 
# Find the maximum total from top to bottom in triangle.txt (right click
# and 'Save Link/Target As...'), a 15K text file containing a triangle
# with one-hundred rows.

s = File.read('067.txt') 

rows = s.split("\n").map{ |row| row.split(' ').map{ |num| num.to_i } }

prev_row = []

rows.each do |row|
  cur_row = []

  row.each_with_index do |num, i|
    a =  (i == 0) ? 0 : prev_row[i-1]
    b = (i >= prev_row.length) ? 0 : prev_row[i]
    
    cur_row << (num + [a, b].max)
  end

  prev_row = cur_row
end

puts prev_row.max


