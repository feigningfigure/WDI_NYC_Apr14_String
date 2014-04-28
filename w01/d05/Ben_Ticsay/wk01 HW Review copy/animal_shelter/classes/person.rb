class Person

  attr_accessor :name :age :gender :pets

  def initialize(name, age, gender, pets)
    @name = name
    @species = age
    @pets = []
  end

  def new

  end

  def to_s
    puts "#{@name} is a #{@age} year old #{@gender} has #{@pets.count} "
  end

  def display_pets

  end


end
