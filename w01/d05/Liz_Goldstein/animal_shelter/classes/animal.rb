class Animal

  attr_accessor :name, :age, :species, :toys

  def initialize(name, age, species)
  	@name = name
  	@age = age
  	@species = species
  	@toys = []
  end

  def to_s
    # will not pass rspec with this control
    if @toys.empty? == false;
  	"#{@name} is a #{@age} year old #{@species} that loves #{@toys.join(', ')}"
    else
    "#{@name} is a #{@age} year old #{@species}."
    end
  end

  def has_toys
  	@toys << toys
  end

end

