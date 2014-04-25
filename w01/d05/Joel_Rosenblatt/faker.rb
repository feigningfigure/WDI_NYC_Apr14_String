require 'Faker'

class Person
  def initialize
    @name=Faker::Name.name
  end

  attr_accessor :name

  def to_s
    "Hi! My name is #{name}"
  end
end

nemesis=[]

for x in (1..100)
nemesis << Person.new
end


nemesis.each do |person|
  puts person.to_s
end
