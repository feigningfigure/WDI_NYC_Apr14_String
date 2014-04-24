class Student

  # this is a 'macro' that creates getter/setter methods
  attr_accessor :name, :bag

  # 'initialize' method determines
  # the code that will run when .new
  # is called
  def initialize(initial_name=nil)
    # what's important to your object
    # upon its creation?
    puts "I was created!"
    @name = initial_name
    @bag = Array.new
  end

  # 'getter' method
  def name_getter
    # an 'instance' variable.
    # they must begin with @
    @name
  end

  # 'setter' method re-writes an instance variable
  def name_setter(new_name)
    @name = new_name
  end

  # WHY DOES THIS WORK!?!?!
  # this is one of the two methods
  # that attr_accessor creates
  # def name=(new_name)
  #   @name = new_name
  # end

  # def +(other_name)
  #   @name + other_name
  # end

  def shout(word)
    puts word.upcase
  end


end
