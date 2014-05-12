require_relative 'dog'
require_relative 'human'
require_relative 'superhero'
require 'faker'

module Superhero
  def fly
    puts "I'm flying"
  end

  def save_people
    puts "Here I am to save the day"
  end


end



5.times {
  person = Human.new
  person.speak
}

5.times {
  dog = Dog.new
  dog.speak
  dog.extend(Superhero)
  dog.fly
}
