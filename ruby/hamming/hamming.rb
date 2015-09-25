class Hamming
  def self.compute(string1,string2)
    raise ArgumentError if string1.size != string2.size
    (0..string1.size).inject(0){|distance,i| string1[i]!=string2[i] ? distance+= 1 : distance }
  end
end