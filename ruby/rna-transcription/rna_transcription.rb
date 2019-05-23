class Complement

  def self.of_dna(dna)

    rna = dna.gsub(/[CGTA]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U')

    return rna
  end
end



