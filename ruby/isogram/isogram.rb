class Isogram

  def self.isogram?(input)
    string = input.downcase.scan(/\b[\w']+\b/).join
    string.chars.uniq.length == string.length
  end
end
