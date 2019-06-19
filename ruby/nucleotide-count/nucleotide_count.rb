class Nucleotide

  NUCLEOTIDES = ["A", "T", "C", "G"]

  def initialize(dna_strand)
    @dna_strand = dna_strand
  end

  def self.from_dna(dna_strand)
    test_strand = dna_strand.chars.delete_if { |nucl| NUCLEOTIDES.include?(nucl)}
    raise ArgumentError if test_strand.length > 0

    new(dna_strand)
  end


  def histogram
    histogram = {}
    NUCLEOTIDES.each do |nucleotide|
      histogram["#{nucleotide}"] = @dna_strand.count(nucleotide)
    end
    histogram
  end


  def count(nucleotide)
    @dna_strand.count(nucleotide)
  end



end
