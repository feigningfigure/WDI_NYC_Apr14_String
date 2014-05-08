require 'faker'
require 'pry'
#Instructor's Solution
class Person
  def initialize
    @name = Faker::Name.name #No intialize name because the app doesnt need to be changed by user; Faker will set it everytime.
    @age = rand(18..75)
    @company = Faker::Company.name
    @email = Faker::Internet.email(name = @name) #pass a name parameter with what was generated in @name
  end

  def to_s
    "My name is #{@name} and I am #{@age} years old. I work for #{@company} and you can contact me at #{@email}\n"
  end
  end #class Person ends

  people_array = []
  50.times do
  people_array << Person.new
end

person_array.each do |person|
  puts person.to_s
end

class Person
  attr_accessor :name, :age, :company, :email #attr_accessor being able to modify or update it later on; syntac sugar for writing methods for you when called

  def initialize(name,age,company,email)
    @name = Faker::Name.name
    @age = rand(18...50)
    @company = Faker::Company.name
    @email = Faker::Internet.email
  end


  def to_s
    "My name is #{@name} and I am #{@age} years old. I work for #{@company} and you can contact me at #{@email}"
  end
end
person_array = []
50.times do
end
