class Client
attr_accessor :name, :age, :pets

  def initialize (name, age)
    @name = name
    @age = age
    @pets = Hash.new
  end

end


