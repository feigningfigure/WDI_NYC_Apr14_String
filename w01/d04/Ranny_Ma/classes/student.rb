class Student
  # 'initialize' method determines
  # the code that will run when .new is called
  #getter method
  def initialize(name)
    puts "I was created!"
  end

  def name
    @name
  end

  def shout(word)
    puts word.upcase
  end

end
