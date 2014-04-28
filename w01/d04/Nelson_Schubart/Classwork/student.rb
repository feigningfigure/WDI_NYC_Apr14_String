class Student

end

  #'intitialize' method determines the code that will run when .new is called


  def initialize(initial_name)
    puts "I was created"
    @name = initial_name
    @bag = Array.new
    @balance = 100
    @dollars = []
  end

  # 'getter' method
  def name
    # an 'instance' varable
    # must begin with @
    @name
  end

  def shout(word)
    puts word.upcase
  end


  def name_setter(new_name)
    @name = new_name
  end

  # 'getter' method
  def get_dollars(number_of_desired_dollars)
    number_of_desired_dollars.times do
      @dollars << Dollar.new
    end
    puts "You have #{{@dollars.length}
  end

  def assemble_table
    @table = Table.new
  end

  def slice_bread
    @table.surface[0].slice_bread
  end


  # 'getter' method
  def name_getter
    # an 'instance' varable
    # must begin with @
    @name = name
  end

  # this is a pre-defined 'macro' in ruby that creates getter/setter (method) for a variable
  attr_accessor :name

  # can see the item but can't change it. READ ONLY
  attr_reader :bag

  # you can change the bag but not see whats in it
  attr_writer :bag

5.times do
  puts "Hey"
end
