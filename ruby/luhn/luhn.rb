class Luhn

  def self.valid?(number)
    number_to_test = number.chars.map.with_index { | n, i|
      if i.even?
        doubled = n.to_i * 2
        if doubled > 9
          doubled = doubled - 9
        end
        doubled
      else n.to_i
      end
    }.sum

    number.length > 1 && number_to_test % 10 == 0
  end
end
