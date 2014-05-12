require 'pry'
require 'faker'
require 'mactts'



class Human
  attr_accessor :name, :age, :gender, :pets

  def initialize(input_hash)
    @name = input_hash[:name]
    @age = input_hash[:age]
    @gender = input_hash[:gender]
    @pets = []
  end

  def to_s
    "Hi! I'm #{name}, an #{age}-year-old #{gender}."
  end

  def speak 
    Mac::TTS.say(self.to_s)
  end

  def make_dog
    @pets << Dog.new({name: Faker::Name.name, owner: self})
  end
end


class Dog
  attr_accessor :name, :owner

  def initialize(input_hash)
    @name = input_hash[:name]
    @owner = input_hash[:owner]
  end

  def to_s
    "woof!"
  end

  def speak
    Mac::TTS.say(self.to_s)
  end 
end


module Superhero
  def fly
    puts "wooosh! I'm flying"
  end

  def save_people
    if @pets.length <1
      puts "I just saved some people."
    else
      sidekick = @pets.sample
      puts "I just save some people with my trusty #{sidekick.class} #{sidekick.name}"
    end
  end

end



humans = []

5.times do 
  humans << Human.new({name: Faker::Name.name, age: rand(19..99), gender: ['male','female'].sample})
end
  

humans.each do |human|
  speak
end



