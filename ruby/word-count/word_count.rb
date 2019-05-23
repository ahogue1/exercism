class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    phrase = @phrase.downcase.gsub(/[^0-9a-z,'' ]/, '').split(/[\s,]+/)
  end

  def remove_quotes(word)
    if word[0] && word[-1] == "'"
        word = word[1...-1]
    else
      word
    end
  end

  def word_count
    counts = Hash.new(0)
    words.each { |word|
      counts[remove_quotes(word)] += 1
         }
    clean_counts(counts)
  end

  def clean_counts(counts)
    counts.delete_if{|word, value| word == "" }
  end
end


