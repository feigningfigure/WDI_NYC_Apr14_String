class Client
attr_accessor :name, :age, :pets

  def initialize (name, age)
    @name = name
    @age = age
    @pets = Hash.new
  end

  def to_s
    "#{name} is a 30 year old with 0 pets"
  end


end


