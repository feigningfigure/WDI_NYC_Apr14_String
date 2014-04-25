require 'faker'

class Person
  attr_reader :name

  def initialize
    @name = Faker::Name.name
  end

  def to_s
    "Hi! My name is #{person.name}." #or @name; or self.name
  end

end

arr = []
100.times {arr << Person.new}

arr.each do |person|
  #puts person.to_s #to_s is the new method we created
  puts "Hi name is #{person.name}" #or puts "Hi! My name is #{person.name}"
end
