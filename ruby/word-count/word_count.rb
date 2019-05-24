class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    @phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, counts|
      counts[word] += 1
    end
  end

end


