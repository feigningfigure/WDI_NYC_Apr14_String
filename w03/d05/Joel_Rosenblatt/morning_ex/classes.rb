require 'Faker'

$gender_arr = ["male", "female"]

class Human
  def initialize
    @name = Faker::Name.name
    @age = rand(18..75)
    @gender = $gender_arr.sample
  end

  def speak
    "Hi, I'm #{@name}, a #{@age} year old #{@gender}"
  end

end


class Dog
  attr_accessor :name, :owner

  def initialize(name, owner)
    @name = name
    @owner = owner
  end

  def speak
    "Woof!"
  end

end


arr=[]
5.times { arr << Human.new }
arr.each { |human| puts human.speak }

module Superhero
  def fly?
    true
  end

  def save_people?
    true
  end
end

human.extend(Superhero)
