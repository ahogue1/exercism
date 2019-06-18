class Isogram

  def self.isogram?(input)
    string = input.downcase.scan(/[a-z]/).join
    string.each_char.uniq.length == string.length
  end
end
