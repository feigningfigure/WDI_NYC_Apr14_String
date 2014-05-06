require 'Faker'

class Person
  def initialize
    @name = Faker::Name.name
    @age = rand(18..75)
    @company = Faker::Company.name
    @email = Faker::Internet.email(name = @name)
  end

  def to_s
    "My name is #{@name}, I am #{@age} years old, and I work at #{@company}. You can contact me at #{@email}."
  end

end

arr=[]
50.times { arr << Person.new }

arr.each { |person| puts person.to_s }
