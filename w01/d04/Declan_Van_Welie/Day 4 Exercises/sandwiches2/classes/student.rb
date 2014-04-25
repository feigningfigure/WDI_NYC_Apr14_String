class Student

#Syntactic sugar to auto-generate getter/setter methods. It's a "macro." You need to tell it the name of the instance variable and the getter & setter method. They'll all be named consistently.
attr_accessor :name, :bag, :dollars, :table
#I can see what's in the bag, but not change it.
# attr_reader :bag
  # 'initilaize' method determines the code that will run when .new is called.
attr_reader :balance
  #This is like a student.new. Initialize sets up the attributes to come pre-loaded for each new instance of the class.
  def initialize(initial_name=nil)
    puts "I was created!"
    #name is a parameter substituted by the passed input (from the user or another method.)
    #the variable in the initialize method fetches
    #input from the user and feeds it to the def name below.
    @name = initial_name
    # will setup a blank array for us to feed things into.
    #The following will create a default "thing" to put into the bag
    #new_noteboook = Notebook.new
    @bag = []
    @balance = 100
    @dollars = []
  end

# 'getter' method
#   def name_getter
#     # an instance variable, which must begin with @.
#     @name
#   end

# # Setters re-write the instance variable. They get
# # access to the instance variable and can make changes
#   def name_setter(new_name)
#     @name = new_name
#   end

def shout(word)
  puts word.upcase
end
end


def add_dollars(number_of_desired_dollars)

  # For the numer of desired dollars, you want to loop
  # you want to
  number_of_desired_dollars.times do
  @dollars << Dollar.new

end
puts "You have #{@dollars.length} dollars!"
# Should return something.

end


def find_ingredients_for_sandwich
  @bag << Bread.new
  @bag << Jelly.new
  @bag << PeanutButter.new
end


def slice_bread
  @table.surface[0].sliced = true
  end


def assemble_table
  @table = Table.new
end
#@ in the below scenario translates to self.
# You need to refer to the instance methods. You
# refer to self because we've given the class the
# ability to createt the instance variables.
def move_bag_contents_to_table
  @table.surface = @bag.select do |item|
  item.class != Notebook
end
@bag = @bag - @table.surface
end

def make_sandwich
  jelly = nil
  pb = nil
  bread = nil
  @table.surface.each do |item|
    case item.class
    when Bread
      bread = item
    when Jelly
      jelly = item
    when PeanutButter
      pb = item
    end
  end
Sandwich.new(bread, jelly, pb)


end

