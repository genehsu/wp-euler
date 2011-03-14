
def factorial(n) 
  return 1 if n == 0
  (1..n).inject{ |prod, i| prod*i }
end

def permutations(n,r) 
  # factorial(n) / factorial(n-r)
  ((n-r+1)..n).inject{ |prod, i| prod*i }
end

def combinations(n,r)
  # factorial(n) / ( factorial(r) * factorial(n-r) )
  permutations(n,r) / factorial(r)
end


