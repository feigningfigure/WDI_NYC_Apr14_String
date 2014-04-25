class Student
  # initialize method determines the code that will run when .new is called
  # this is a getter method

#this is a macro that creates getter and setter
attr_accessor :name

  def initialize(name=nil)    #name is a parameter variable
    # whats important about the object during it's creation
      @name = name        # @name is an instance variable
      @dollars = []
      @balance = 100
  end

  def name_getter # getter method --> GETS the name variable
    @name # an instance variable all start with "@"
  end

  #setter method
  def name=(new_name)

    @name = new_name
  end

def add_dollars(number_of_desired_dollars)
     number_of_desired_dollars.times do
  @dollars << Dollar.new
end
puts "You have #{@dollars.length} dollars"
#should return something
end
#declan.add_dollars(10)  creates an array of dollars
def find_ingredients_for_sandwich
  @bag << Bread.new
  @bag << Jelly.new
  @bag << PeanutButter.new
end


end
