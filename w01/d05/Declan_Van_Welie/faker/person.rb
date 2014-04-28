require 'faker'

attr_reader :name #:enemies

class Person

  def initialize
    @name = Faker::Name.name
  end
    # enemies = []
    #   for x do.times 100 |name|
    #   enemies << name
    #   #end
    #   return enemies

  # Person.new
  # puts "Please tell me your name"
  # gets.chomp.to_s

  def to_s
    "Hi my name is #{person.name}"
  end
end

arr = []
100.times {arr << Person.new}


arr.each do |person|
  "Hi my name is #{person.name}"
  # puts person.to_s
end
# 100.times do
#   arr << Person.new
# end
