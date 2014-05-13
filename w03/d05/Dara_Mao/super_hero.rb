require 'faker'
require 'pry'


class Person
  attr_accessor :name, :age, :gender

#initialize allows us to create instances
  def initialize (name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def speak
    "Hi, I am #{@name}, a #{@age} year-old #{@gender}."
  end
end

class Dog
    attr_accessor :name, :owner

    def initialize(name, owner)
      @name = name
      @owner = owner
    end

    def speak
      "Woof!! I'm #{@owner}'s dog called #{@name}"
    end
end


#Create 5 instances of random names, ages and gender.
# 5.times do
#     age = rand(18..86)
#     gender_array = ["male","female"]
#     gender = gender_array.sample
#     person = Person.new( Faker::Name.name,age, gender)
#     person.speak
#  end


module Superhero
  def speak
    puts "I am #{@name}. A Superhero"
  end

  def fly
    puts "I can fly!"
  end

  def save_people
    puts "I just saved #{rand(1..100)} people. No big deal."
  end
end

person = Person.new("Lauren", 95, "female")
person.speak

person.extend(Superhero)
person.speak

dog = Dog.new("Gypsy", Faker::Name.name)
dog.speak

dog.extend(Superhero)
dog.speak
