class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    phrase = @phrase
      .downcase
      .gsub(/[^0-9a-z,'' ]/, '')
      .split(/[\s,]+/)
      .delete_if(&:empty?)
      .map(&method(:remove_quotes))
  end

  def remove_quotes(word)
    if word.start_with?("'") && word.end_with?("'")
        word = word[1...-1]
    else
      word
    end
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, counts|
      counts[word] += 1
    end
  end

end


