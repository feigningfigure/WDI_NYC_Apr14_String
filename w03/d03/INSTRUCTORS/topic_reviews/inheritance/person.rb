class Person
  attr_accessor :name

  # inheriting from a module

  include NinjaTraining

  def initialize(name)
    @name = name
  end

  def real_ultimate_power?
    false
  end
end
