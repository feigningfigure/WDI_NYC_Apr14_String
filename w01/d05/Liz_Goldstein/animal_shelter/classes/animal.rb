class Animal
attr_accessor :name, :species, :toys

  def initialize(name)
    @name = name
    @species = species
    @toys = []
  end

  def create
    puts "What kind of animal is #{@name}?"
    @species = gets.chomp
    puts "A #{@species} named #{@name}, so cute!"
    $happitails.animals << @name
    puts "Does #{@name} have any toys?"   # this can be better, take multiple toys
    puts "If yes, what are they?"
    toy = gets.chomp.downcase
    if toy == "no"
      puts "OK, we're done!"
    else
      self.toys << toy
      puts "OK, #{@name}'s #{@toys} will be safe with us."
    end
  end

  def to_s
    if @toys.empty? == false;
      p "Hi my name is #{@name}, I'm a #{@species} and I love #{@toys}."
      else
      p "Hi my name is #{@name} and I'm a #{@species}."
    # end
  end
  #would be really good to turn the array in to a string and print it out pretty

  def check_toys
    puts "I have #{toys}"
  end
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
