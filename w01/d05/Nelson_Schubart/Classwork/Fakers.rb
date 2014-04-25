# Create a Person calls that initializes Faker (Faker: Name.name) as name
# Include a to_s method that says Hi
require 'Faker'

class Person

  def initialize
    @name = Faker::Name.name
  end

  attr_reader :name

  def to_s
    "Hi my name is #{self.name}"
  end
end

name_array = []
100.times {name_array << Person.new}

  # or:
  # 100.times do
  #   name_array << Person.new
  # end

name_array.each do |person|
  puts person.to_s
  puts "Hi my name is #{self}"
end
