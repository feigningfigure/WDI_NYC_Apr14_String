require 'faker'

Faker::Name.name

class Person #class

  def initialize #method
    @name = Faker::Name.name #gem
  end

  attr_accessor :name

  def to_s #method
    "Hi my name is #{@name}" #use puts later when u run the track
  end

end
  arr = []
  100.times {arr << Person.new}

  puts arr
#  def new()
#   print "Creating a new ", Faker::Name.nam, "\n"
#  end
