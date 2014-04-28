class Animal
  attr_accessor :name, :age, :species, :toys

  def initialize(name=nil, age=1, species=nil)
    @name = name
    @age = age
    @species = species
    @toys = []
  end


  def to_s
    "#{@name} is a #{@age} year old #{@species} that loves #{@toys.join(", ")}"
  end

  def has_toys(pet_toy)
    @toys << pet_toy
  end

end
