class Student

  # Macro that creates getter/setter
  attr_accessor :name

  # 'getter' method
  # the code that will run when .nex
  # is called
  def initialize(name_here=nil)
    puts "I was created!"
    @name = name_here
    # sets the instance variable equal
    # equal to the method variable (the parameter)
  end

  def name_getter
    # an 'instance' variable
    # they must begin with @
    @name
  end

  #'setter' method re-writes an instance variable
  def name_setter(new_name)
    @name = new_name

  end

  def shout(word)
    puts word.upcase
  end


end
