class Student

  #getter method= sole job is the perform a function.
  def name
    @name #instance variable
  end

  def initalize(name) #vs .new (Hash.new) is another name for initialize. david = Student.new(1) ==> "I was created."
    @name = name #@name vs name ; name is a parameter are replaced by the arguments from your input;
    puts "I was created."

  end
  #initalize calls first (.new) is a pre-existed method that is called everytime with .new

  def name_getter

  end

  def shout(word)
    puts word.upcase
  end
end
