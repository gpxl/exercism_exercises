class Complement
  DNA_RNA_MAPPING = {'G' => 'C','C' => 'G','T' => 'A','A' => 'U'}
  
  def self.of_dna(nucleotide)
    complement(nucleotide,DNA_RNA_MAPPING)
  end

  def self.of_rna(nucleotide)
    complement(nucleotide,DNA_RNA_MAPPING.invert)
  end

  private 

  def self.complement(n,m)
    n.chars.map{|c| m[c] or raise ArgumentError }.join()
  end

end