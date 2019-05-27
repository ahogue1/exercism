class Anagram

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.select do |anagram|
      anagram.downcase.chars.sort == @word.downcase.chars.sort &&
      anagram.downcase != @word.downcase
    end
  end
end
