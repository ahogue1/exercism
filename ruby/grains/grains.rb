class Grains

  def self.square(number)
    raise ArgumentError.new("error: invalid input for number") unless (1..64).cover?(number)
    if number == 1
      1
    else
      2**(number-1)
    end
  end

  def self.total
    (1..64).reduce(0) {|sum, number| sum + Grains.square(number)}
  end
end
