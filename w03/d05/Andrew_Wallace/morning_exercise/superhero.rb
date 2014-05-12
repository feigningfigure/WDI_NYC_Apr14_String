require 'faker'
require 'pry'

class Human
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def speak
    puts "Hi, I'm #{@name}...a #{@age}-year-old #{@gender}."
  end
end

class Dog
  attr_accessor :name, :owner

  def initialize(name, owner)
    @name = name
    @name = owner
  end


  def speak
    puts "Woof, woof! My collar says: I'm #{name}.  Call #{@owner} if I'm lost."
  end
end


5.times do
  age = rand(18..99)
  gender = ["man", "woman"]
  gender = gender.sample
  person = Human.new(Faker::Name.name, age, gender)
  person.speak
end

module Superhero
  def speak
    puts "I am #{@name}. A Superhero!"
  end

  def fly
    puts "I can fly!"
  end

  def save_people
    puts "I just saved #{rand(100)} people!  No big deal."
  end
end

person = Human.new("Lauren", 95, 'Female')
person.speak

person.extend(Superhero)
person.speak

dog = Dog.new("Gypsy", Faker::Name.name)
dog.speak

dog.extend(superhero)
dog.speak
