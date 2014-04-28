require "faker"



 class Person

  def initialize

    @name =  Faker::Name.name
  end
  attr_reader :name
  # attr_accessor :name



# two string method
  def to_so
  "hi my name is #{person.name}"
  end

#Array.new(10) { iii }
# <<
#creates new person
end

arr = []
100.times {arr << Person.new}

# 100.time do
#   arr << Person.new
# end

 arr.each do |person|
  # puts person.to_so
  puts "Hi my name is #{person.name}"
end
