class Animal
attr_accessor :name, :species, :toys

  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end

  def to_s
    if @toys.empty? == false;
      p "Hi my name is #{@name}, I'm a #{@species} and I love #{@toys.to_s}."
      else
      p "Hi my name is #{@name} and I'm a #{@species}."
    end
  end
  #would be really good to turn the array in to a string and print it out pretty

  def check_toys
    puts "I have #{toys}"
  end

end

# puts "Create an animal"
# animal1 = Animal.new("lizzy", "sloth")

# animal1.to_s
# animal1.name = "Sara"
# animal1.to_s
# animal1.toys << "Food"
# animal1.toys << "mice"
# animal1.to_s
