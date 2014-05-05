require 'faker'
require 'pry'
#Instructor's Solution
class Person
  #Class variable
  @@people_array = []
  # $people_array = []

  def initialize #instance attribute, instance variables
    @name = Faker::Name.name #No intialize name because the app doesnt need to be changed by user; Faker will set it everytime.
    @age = rand(18..75)
    @company = Faker::Company.name
    @email = Faker::Internet.email(name = @name) #pass a name parameter with what was generated in @name
  end

  def to_s
    "My name is #{@name} and I am #{@age} years old. I work for #{@company} and you can contact me at #{@email}\n"
  end

  def self.fill_people_array  #Class Methods !!!! Create 50 instances of Person.new
    @@people_array.clear #it will remove whats in the array, so it generates a new list everytime the class method is called.
    50.times do
      @@people_array << Person.new
      # @@person_array << Person.new
    end
  end

  #To show  @@ people_array
  def self.see_people_array
    print @@people_array
  end

  def self.all_to_s
    @@person_array.each do |person|
      puts person.to_s
    end
  end


  end #class Person ends

Person.fill_people_array #50 instances
# $person_array #prints out the entire array
@@people_array

Person.all_to_s #call all list
