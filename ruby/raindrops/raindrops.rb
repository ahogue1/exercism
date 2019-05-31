class Raindrops

  RAIN = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    rain = [3,5,7].select { |n| number % n == 0}.map{ |number| RAIN[number]}
   if rain.empty?
      number.to_s
    else
      rain.join
    end
  end
end
