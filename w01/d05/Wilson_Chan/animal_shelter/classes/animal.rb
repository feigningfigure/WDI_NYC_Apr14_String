class Animal
  attr_accessor :name, :species, :toys

  def initialize(name, species, toys)
    @name = name
    @species = species
    @toys = []
  end

  def to_s
    "#{name} is a 3 year old cat that loves mice, yarn"
  end


end



