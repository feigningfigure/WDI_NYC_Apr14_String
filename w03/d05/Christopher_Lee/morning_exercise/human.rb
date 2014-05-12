require_relative 'superhero'

class Human
  extend Superhero

  def initialize
    @name = Faker::Name.name
    @age =  rand(18..75)
    @gender = ["Male", "Female"].sample
  end

  def speak
    puts "Hi. I'm #{@name}, a #{@age}-year-old #{@gender}"
  end
end
