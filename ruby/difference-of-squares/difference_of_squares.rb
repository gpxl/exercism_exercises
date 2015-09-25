class Squares
  def initialize(int)
    @int = int
  end

  def square_of_sums
    (1..@int).inject { |sum, i| sum + i }**2
  end

  def sum_of_squares
    (1..@int).inject { |sum, i| sum + (i**2) }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
