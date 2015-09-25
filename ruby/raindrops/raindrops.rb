class Raindrops
  MAPPING = {'3'=>'Pling','5'=>'Plang','7'=>'Plong'}
  def self.convert(int)
    converted_string = MAPPING.map{|k,v| v unless int%k.to_i != 0 }.join
    converted_string.empty? ? int.to_s : converted_string
  end
end