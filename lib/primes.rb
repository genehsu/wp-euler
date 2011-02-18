module Prime

  Primelist = [2,3,5,7,11,13,17,19]
  @@last_max = 22

  class Iterator

    def initialize
      @index = 0
    end

    def next
      n = Prime::Primelist[@index]
      @index += 1
      if ! self.has_next?
        Prime._grow
      end
      n
    end

    def has_next?
      @index < Prime::Primelist.size
    end

  end

  def self._grow
    new_max = @@last_max > 40 ? @@last_max + 1000 - @@last_max % 1000 :
                                @@last_max * @@last_max
    new_primes = self.sieve( @@last_max+1, new_max )
    Primelist.push( *new_primes )
    @@last_max = new_max
  end

  def self.sieve( min, max )
    range_count = max - min + 1
    bitvector = 0
    Primelist.each do |p|
      break if p*p > max
      offset = ( p - min % p ) % p
      offset.step(range_count, p) {|i| bitvector |= 1<<i }
    end
    primes = []
    range_count.times do |i|
      if bitvector[i] == 0
        primes << i+min
      end
    end
    primes
  end

  def isPrime?( n )
    return true if Primelist.include?(n)
    Primelist.each do |i|
      return false if n % i == 0
    end
    return true
  end

  def prime_signature( n )
    signature = []
    pit = Prime::Iterator.new
	while n > 1
	  p = pit.next
      count = 0
      while n % p == 0
       n /= p
        count += 1
      end
      signature << count
    end
    signature
  end

  def count_factors( signature )
    signature.inject(1) do |product,n|
      (n+1)*product
    end
  end

end

