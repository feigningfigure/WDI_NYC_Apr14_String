class Ninja
  attr_accessor :name
  include NinjaTraining
  def initialize(name)
    @name = name
  end

  def real_ultimate_power?
    true
  end

end
