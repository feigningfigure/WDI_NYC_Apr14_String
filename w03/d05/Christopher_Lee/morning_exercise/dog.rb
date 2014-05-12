require_relative 'superhero'

module Superhero

  def fly
    "I'm flying"
  end

  def save_people
    "Here I am to save the day"
  end


end

class Dog
  attr_accessor :name, :owner
  extend Superhero

  def initialize
    @name = Faker::Name.first_name
    @owner = Faker::Name.name
  end

  def speak
    puts  "Wooof Woof #{@name} Woof Woof #{@owner}"
  end
end
