class Hamming

  def self.compute(strand1, strand2)
    raise ArgumentError, 'DNA strands must be equal lengths' unless strand1.length == strand2.length

    strand1.chars.each_with_index.count { |nucl, index| nucl != strand2.chars[index] }
  end

end
