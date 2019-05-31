class Triplet
  def initialize (*args)
    @sides = args.sort
  end

  def sum
    @sides.sum
  end

  def product
    @sides.inject(:*)
  end

  def pythagorean?
    a, b, c = @sides.map! {|num| num ** 2}
    a + b == c
  end

  def self.where(number)

  end
end
