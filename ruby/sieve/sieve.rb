class Sieve
  
  def initialize(n)
    @n = n
  end

  def primes
    not_primes((2..@n).to_a)
  end

  def not_primes(remaining, index = 0)
    factor = remaining[index]
    return remaining if factor.nil?
    multiples = ((factor * 2)..@n).step(factor).to_a
    not_primes(remaining - multiples, index + 1)
  end

end