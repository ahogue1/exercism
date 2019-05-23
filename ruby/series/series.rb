class Series

  def initialize(series)
    @series = series
  end

  def slices(number)
    raise ArgumentError.new("error: number is longer than series") if number > @series.length

    @series.chars.each_cons(number).map { |slice| slice.join }
  end

end
