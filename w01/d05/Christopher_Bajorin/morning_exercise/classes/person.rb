class Person

  attr_accessor :name

  def initialize(name=nil)
    @name = Faker::Name.name
  end

  def to_s
    "Hi! my name is #{@name}"
  end
end


