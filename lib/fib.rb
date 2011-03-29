require "bigdecimal"
require "bigdecimal/math"
include BigMath

module Fib 

  def self.fib(n)
    sqrt5 = Math.sqrt(5)
    phi = (1 + sqrt5)/2
    phi2 = (1 - sqrt5)/2

    1/sqrt5*(phi**n-phi2**n)
  end

  def self.big_fib(n)
    sqrt5 = Math.sqrt(5)
    phi = BigDecimal(((1 + sqrt5)/2).to_s)
    phi2 = BigDecimal(((1 - sqrt5)/2).to_s)

    (phi**n-phi2**n)/sqrt5
  end

end
