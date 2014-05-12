require 'faker'
require 'pry'

class Human
  attr_accessor :name, :age, :gender

  def initialize
    @name = Faker::Name.name
    @age = Faker::Number.number(2)
    @gender = ["male", "female"].sample
  end


  def speak
    "Hi, I'm #{@name}, a #{@age} year-old #{@gender}!"
  end

end


person = Human.new



class Dog

  def initialize(name, owner)
    @name = name
    @owner = owner
  end

  def speak
    "meow"
  end

end

module Superhero
  def speak
    "I am #{@name}. I am a superhero"
  end

  def save_people
    puts "I just saved #{rand(100)} people! no big deal..."
  end
end



