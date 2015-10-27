class Phrase
  VERSION = 1

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @phrase.downcase.gsub(%r{\s'|'\s},' ').split(/[^\w']+/).inject(Hash.new(0)){|hash,word| hash[word] += 1; hash}
  end
end
