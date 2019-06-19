class Isogram

  def self.isogram?(input)
    string = input.downcase.scan(/[a-z]/)
    string.uniq.length == string.length
  end
end
