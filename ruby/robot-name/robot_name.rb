class Robot
  attr_accessor :name
  def name
    @name || set_name
  end

  def reset
    set_name
  end

  private

  def set_name
    @name = (('A'..'Z').to_a.sample(2) + (0..9).to_a.sample(3)).join
  end
end
