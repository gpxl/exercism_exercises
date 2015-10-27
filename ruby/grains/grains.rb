class Grains
  def self.square(number)
    (1...number).reduce(1){|sum| sum * 2 }
  end

  def self.total
    (1..64).reduce(0){|sum, i| sum + square(i) }
  end
end
