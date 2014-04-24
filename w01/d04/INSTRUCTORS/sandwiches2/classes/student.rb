class Student

  # this is a 'macro' that creates getter/setter methods
  attr_accessor :name, :bag, :dollars

  # I can see what's in the bag
  # but not change it.
  attr_reader :balance

  # you can change the bag, but not see what's in it
  # attr_writer :bag
  # 'initialize' method determines
  # the code that will run when .new
  # is called
  def initialize(initial_name=nil)
    # what's important to your object
    # upon its creation?
    puts "I was created!"
    @name = initial_name
    @bag = Array.new
    @balance = 100
    @dollars = []
  end

  def add_dollars(number_of_desired_dollars)
    number_of_desired_dollars.times do
      @dollars << Dollar.new
    end
    puts "You have #{@dollars.length} dollars!"
    # should return something!!!
  end

  def find_ingredients_for_sandwich
    @bag << Bread.new
    @bag << Jelly.new
    @bag << PeanutButter.new
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
