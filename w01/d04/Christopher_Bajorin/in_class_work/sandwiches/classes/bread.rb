class Bread
  attr_reader :sliced, :type

  def initialize (sliced=false,type=nil)
    @type = type
  end

end
