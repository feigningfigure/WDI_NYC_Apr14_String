class Student

  # this is a 'macro' that creates getter/setter methods
  attr_accessor :name, :bag, :dollars, :table

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

  def to_s
    puts "Hello! My name is #{@name}.  I really like sandwiches."
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

  def slice_bread
    @table.surface[0].sliced = true
  end

  def assemble_table
    @table = Table.new
  end

  def move_bag_contents_to_table
    # this will prevent the edge-case of a student
    # without  table and bag from calling this
    # return nil unless @table && @bag
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
