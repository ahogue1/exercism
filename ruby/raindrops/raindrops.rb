class Raindrops

  RAIN = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    RAIN.each_with_object(rain = '') { |(factor, note), rain| rain << note if (number % factor).zero? }
    rain.empty? ? number.to_s : rain

  end
end
