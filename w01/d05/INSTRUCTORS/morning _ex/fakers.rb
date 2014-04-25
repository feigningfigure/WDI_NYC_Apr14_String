# Morning Exercise
# Fakers!

require 'Faker'

# write a person class
class Person

  def initialize
    @name = Faker::Name.name
  end

  def to_s
    "Hi my name is #{@name}"
  end
end

# build an array of 1,000 person objects
arr = []
100.times do
  arr << Person.new
end

# Syntactic sugar
# arr=[]
# 100.times { arr << Person.new }

# Another array method
# The map method takes an enumerable object and a block, and runs the block for each element
# arr = 100.times.map do
#   Person.new
# end

# Syntactic sugar
# arr = 100.times.map { Person.new }


# Iterate on each person in the array and print a string
arr.each do |person|
  puts Person.new.to_s
end

# Syntactic sugar
# arr.each { |person| puts person }
