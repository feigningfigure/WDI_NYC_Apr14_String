require 'faker'

class Person
  attr_reader :name

  $array_name = []

  def initialize(name=Faker::Name.name)
    @name = name.to_s
    puts "Hi My name is #{name}."
    $array_name << Person.100times
    puts $array_name
  end
  return initialize
end




