class Prime
  def self.nth(n)
    raise ArgumentError('Not a valid number') if n < 1
    prime = 0
    (0...n).each do
      prime = find_next_prime_from(prime)
    end
    prime
  end

  def self.find_next_prime_from(n)
    n += 1
    if prime?(n)
      return n
    else
      find_next_prime_from(n)
    end
  end

  def self.prime?(n)
    return false if n <= 1
    (2..Math.sqrt(n)).each do |i|
      return false if n % i == 0
    end
    true
  end
end
