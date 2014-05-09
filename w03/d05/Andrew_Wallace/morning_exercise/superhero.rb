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
