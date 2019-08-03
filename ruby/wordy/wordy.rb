class WordProblem
  def initialize(string)
    @problem = string.split(" ") - ["What"] -["is"] -["by"]
  end

  OPERATORS = {
    "plus" => "+",
    "minus" => "-",
    "multiplied" => "*",
    "divided" => "/"
  }

  def answer
    if (@problem & OPERATORS.keys).empty?
      raise ArgumentError.new("entry must be an equation")
    end

    numbers_count = 0
    equation = @problem.map.with_index { |element, index|
      if OPERATORS[element]
        OPERATORS[element]
      elsif numbers_count == 0
        numbers_count += 1
        "(#{element}"
      elsif element.end_with?("?") && numbers_count == 1
        "#{element[0...-1]})"
      elsif element.end_with?("?")
        element[0...-1]
      else
        numbers_count += 1
        "#{element})"
      end
    }.join

    eval(equation)
  end


end
