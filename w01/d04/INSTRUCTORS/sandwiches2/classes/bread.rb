class Bread
  attr_accessor :sliced?, :type

  def initialize(sliced?=false, type=nil)
    @type = type
  end
end
