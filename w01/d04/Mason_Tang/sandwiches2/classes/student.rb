class Student

  # 'initialize' method determines
  # the code that will run when .new
  # is called

  def initialize(name)
    puts "I was created!"
    @name = name
  end


  # 'getter' method

  def name
    # an 'instance' variable
    # they must begin with @
    @name
  end

  def name_Setter(new_name)
    @name = new_name
  end

  def shout(word)
    puts word.upcase
  end




end
