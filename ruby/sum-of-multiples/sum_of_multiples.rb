class SumOfMultiples

  def initialize (*multiples)
    @multiples = multiples
  end

  def to(number)
   array = @multiples.map do |multiple|
      (1...number).select { |n| n % multiple == 0 }
    end
  array.flatten.uniq.sum
  end
end
