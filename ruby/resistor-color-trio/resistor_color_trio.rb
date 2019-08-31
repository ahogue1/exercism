class ResistorColorTrio

  TRANSLATE_COLORS = {
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9
  }

  def initialize(code)
    @code = code
  end

  def label
    @code.map do |color|
      if TRANSLATE_COLORS.key?(color)
        color = TRANSLATE_COLORS[color]
      else
        raise ArgumentError.new("invalid color")
      end
    end

    result = (@code[0] * 10 + @code[1]) * (10 ** @code[2])

    if result % 1000 == 0
      return "Resistor value: #{result / 1000} kiloohms"
    end

    "Resistor value: #{result} ohms"

  end


end
