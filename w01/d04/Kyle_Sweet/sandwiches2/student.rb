class Student

  #this is a 'macro' that creates getter/setter
  attr_accessor :name


  #'initialize' method determimines the code that will run when .new is called
  def initialize(initial_name)
    #what's important to your object upon its creation?
    puts "I was created!"
    @name=name
  end

#'getter' method
def name_getter
  #an 'instance' variable must include @
  @name
end

def name_setter(new_name) #'public' method
  @name=new_name

def shout(word)
  puts word.upcase
end
