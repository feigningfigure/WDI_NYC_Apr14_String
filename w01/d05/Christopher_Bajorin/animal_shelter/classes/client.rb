require 'rainbow/ext/string'

class Client

  attr_accessor :name, :age, :pets

  def initialize(name, age)
    @name = name
    @age = age
    @pets = Hash.new
  end

  def display_pets
    @pets.each do |k, v|
      puts k
    end
  end

  def give_away_pet(name)

    @pets.delete(name)
  end

  def accept_pet(name, pet_hash)
    @pets[name] = pet_hash
  end

  def to_s
    "#{name} is a #{age} year old with #{@pets.length} pets"
  end


end
