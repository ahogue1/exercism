class Hamming

  def self.compute(dna_1, dna_2)
    raise ArgumentError, 'DNA strands must be equal lenghts' unless dna_1.length == dna_2.length
    count = 0
    dna_1.chars.each_with_index do |nucl, index|
      if nucl == dna_2.chars[index]
        count += 1
      end
    end
    dna_1.length - count
  end
end
