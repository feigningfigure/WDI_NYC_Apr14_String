require 'Faker'

class Person
  attr_accessor :name
  def initialize
    @name = Faker::Name.name
  end

  def to_s
    "Hi, my name is #{person.name}"
  end

  arr = []
  100.times {arr << Person.new}

  arr.each do |person|
    puts "Hi, my name is #{person.name}"
  end
end
#100.times do
#arr << Person.new

