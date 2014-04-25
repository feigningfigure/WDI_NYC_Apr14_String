require 'Faker'

class Person

  attr_accessor :name

  def initialize
    @name = Faker::Name.name
  end

  def to_s
    return "Hi! My name is #{person.name}"
  end
end

arr = []
100.times {arr << Person.new}

arr.each do |x|
  puts "Hi! My name is #{x}"

end
