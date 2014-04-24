class Student

  #'initialize' method determimines the code that will run when .new is called
  def initialize(name)
    puts "I was created!"
    @name=name
  end

#'getter' method
def name
  #an 'instance' variable must include @
  @name
end

def name_setter(new_name) #'public' method
  @name=new_name

def shout(word)
  puts word.upcase
end
