require 'faker'

class Person

def initialize
  @name = Faker::Name:name
end

attr_accessor :name

def to_s
  "Hi my name is #{@name}"
end


arr = []
100.times {arr << Person.new}

arr.each do |person|
  puts person.to_s

end
end
