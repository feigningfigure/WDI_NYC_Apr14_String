class Student

#Syntactic sugar to auto-generate getter/setter methods. It's a "macro." You need to tell it the name of the instance variable and the getter & setter method. They'll all be named consistently.
attr_accessor :name, :bag

  # 'initilaize' method determines the code that will run when .new is called.

  #This is like a student.new. Initialize sets up the attributes to come pre-loaded for each new instance of the class.
  def initialize(initial_name=nil)
    puts "I was created!"
    #name is a parameter substituted by the passed input (from the user or another method.)
    #the variable in the initialize method fetches
    #input from the user and feeds it to the def name below.
    @name = initial_name
    # will setup a blank array for us to feed things into.
    #The following will create a default "thing" to put into the bag
    new_noteboook = Notebook.new
    @bag = []
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
