class Triangle

  def initialize(sides)
    @sides = sides
  end

  def triangle_inequality?
    sum = @sides.sum

    @sides.all? {|side| sum - side >= side }
  end

  def equilateral?
    @sides.uniq.length == 1 && @sides.none? { |side| side == 0 }
  end

  def two_sides_equal?
    @sides.uniq.length <= 2
  end

  def isosceles?
    triangle_inequality? && two_sides_equal?
  end

  def scalene?
    @sides.uniq.length == 3 && triangle_inequality?
  end

end
