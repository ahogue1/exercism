class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    array_to_sieve = (2..@limit).to_a
    array_to_sieve.each do |number|
      array_to_sieve.delete_if { |n| number != n && n % number == 0 }
    end
  end

end
