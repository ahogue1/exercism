class Luhn

  def self.luhn_number(num, index)
    if index.odd?
      num *= 2
      num -= 9 if num > 9
    end

    num
  end

  def self.valid?(number)
    number_array = number.reverse.scan(/[0-9]/)

    if number_array.length <= 1 || number_array.count != number.delete(' ').length
      return false
    end

    number_to_test = number_array.map(&:to_i).map.with_index { | n, i|
      Luhn.luhn_number(n, i)
    }.sum

   number_to_test % 10 == 0
  end

end
