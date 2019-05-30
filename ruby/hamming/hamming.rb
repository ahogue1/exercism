class Hamming

  def self.compute(strand1, strand2)
    raise ArgumentError, 'DNA strands must be equal lengths' unless strand1.length == strand2.length
    strand1.chars.zip(strand2.chars).count { |nucl1, nucl2| nucl1 != nucl2 }
  end

end
