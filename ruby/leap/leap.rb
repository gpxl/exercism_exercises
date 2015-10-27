class Year
  def self.leap?(year)
    if self.meets_leap_year_criteria(year)
      return true
    else
      return false
    end
  end

  def self.meets_leap_year_criteria(year)
    (self.divisable_by_4(year) && !self.divisable_by_100(year)) || self.divisable_by_400(year)
  end

  def self.divisable_by_4(year)
    (year % 4).zero?
  end

  def self.divisable_by_100(year)
    (year % 100).zero?
  end

  def self.divisable_by_400(year)
    (year % 400).zero?
  end
end
