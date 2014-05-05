require 'faker'
require 'pry'

# Person.new(name, email, age, company)

class Person
  # attribute accesor is not meant to be used in this case
  # attr_accessor :name, :age, :company, :email

  def initialize
  @name = Faker::Name.name
  @age = rand(18..75)
  @company = Faker::Company.name
  @email = Faker::Internet.email (name = @name)
  end

  def to_s
    "My name is #{@name} and I am #{@age} years old. I work for #{@company} and you can contact me at #{@email}"
  end

end

people_array = []

50.times do
  people_array << Person.new
end

people_array.each do |person|
  puts person.to_s
end


=begin

Create a Person class with the attributes name, age, company, and email
Use the Faker gem generate values for these attributes
Give the class a to_s method
Create 50 instances of the Person class and add them to an array
Call the to_s method on all 50 instances of the Person class

=end
