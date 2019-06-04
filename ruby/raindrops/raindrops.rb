class Raindrops

  RAIN = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    rain = RAIN.select { |key| number % key == 0}
    rain.empty? ? number.to_s : rain.values.join
  end
end
