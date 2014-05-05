require 'faker'
require 'pry'

# Person.new(name, email, age, company)

# We create a global variable to be used in and out of our class
# $people_array = []

class Person
  # attribute accesor is not meant to be used in this case
  # attr_accessor :name, :age, :company, :email

  def initialize
  @name = Faker::Name.name
  @age = rand(18..75)
  @company = Faker::Company.name
  @email = Faker::Internet.email (name = @name)

  # the below array is only initialized in each instance of the Person class
  # people_array= []
  end

  def to_s
    "My name is #{@name} and I am #{@age} years old. I work for #{@company} and you can contact me at #{@email}"
  end

  def self.fill_people_array
  # to establish a max of 50 people in array, we clear all before filling array
  @@people_array.clear
  # we call the method .new to initialize instance variables and repeat # of times
  50.times do
    @@people_array << Person.new
  end

  def self.see_people_array
    print @@people_array
  end

  def self.people_array
    people_array
  end


end





