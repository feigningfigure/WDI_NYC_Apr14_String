class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments


  def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)
    @address = address
    @style = style

  def has_doorman
    @doorman = true
  end

  def is_walkup
    @walkup =true
  end

  def num_floors
    @floors = 5
  end

  def aparments
    @units = 15
  end



  end
end
