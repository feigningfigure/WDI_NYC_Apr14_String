require 'faker'
require 'pry'

class Human
  attr_accessor :name :age :gender

  def initialize (name, age, gender)
   @name = name
   @age = age
   @gender = gender
  end

  def speak
    "Hi, I'm #{@name} and I'm #{@age} year-old #{@gender}"
  end
end

class Dog
 att_accessor :name :owner

  def initialize (name, owner)
  @name = name
  @owner = owner
  end

  def speak
  puts "Woof, woof! My collar says: I'm #{@name}, please call #{@owner} is I'm lost"
  end

end




age = Random.new


5.times do
  age = rand(21..65)
  gender = ["male", "female"]
  gender = gender.sample
  person = Human.new(Faker::Name:name, age, gender)
end

module Superhero
  def speak
    puts "I am #{@name}. A Superhero!"
  end

  def fly
    puts "I can fly!"
  end

  def save_people
    puts "I just saved #{rand(100)} people!"
  end
end

person = Human.new("Lauren", 95, 'Female')
person.speak

person.extend(Superhero)
person.speak


