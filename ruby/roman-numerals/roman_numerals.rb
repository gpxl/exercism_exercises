class Fixnum
  Calc = Struct.new(:number) do
    ROMAN_MAPPING = {
      1 => ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X'],
      10 => ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC', 'C'],
      100 => ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM', 'M']
    }

    def initialize(number)
      @remainder = number
      @key = 1000
      @result = ''
    end

    def to_roman
      process_thousands
      (0...3).each { process_remaining_keys }
      @result
    end

    def process_thousands
      process_segment { (0...@remainder / @key).each { @result << 'M' } }
    end

    def process_remaining_keys
      process_segment { @result << ROMAN_MAPPING[@key][@remainder / @key] }
    end

    def process_segment
      yield
      update_remainder
      update_key
    end

    def update_remainder
      @remainder -= (@remainder / @key) * @key
    end

    def update_key
      @key /= 10
    end
  end

  def to_roman
    Calc.new(self).to_roman
  end
end
