
#Create a Soldier Class

class Soldier 
  attr_accessor :first_name, :last_name #this helps us get the names to print
  def initialize(first_name, last_name);
    @first_name, @last_name = first_name, last_name
  end
end

#Create an array of soldier objects
soldiers = []
soldiers << Soldier.new("Alvin", "York")
soldiers << Soldier.new("Nina", "Price")
soldiers << Soldier.new("Percy", "Pinkerton")
soldiers << Soldier.new("Abigail", "Brand")
  
#Write a method that prints each soldiers last last_name
soldiers.each {|s| puts s.last_name} #would be a method used to put somthing in a database

#Write a method that returns an array of the soldier object with the last name "Price"

soldiers.select {|s| s.last_name == "Price"}

#Write an array that creates a new array of soldiers last names

soldiers.map {|s| s.last_name}


#EACH - Executes the block of code for each element
#then returns the list itself.
#Uself for when you want to save to a database or print a result
#but you DONT NEED A RETURN VALUE.

#SELECT

#Desired Return Value   #FUNCTION

#None                     each
#New array composed of part of old array = select
#New array with same number of values(transformed) = map 
#Single value             reduce