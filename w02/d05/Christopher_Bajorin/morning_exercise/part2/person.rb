
class Person
  attr_accessor :name, :age, :company, :email
  require "faker"

  def initialize
    @name = Faker::Name.name
    @age = rand(18..75)
    @company = Faker::Company.name
    @email = Faker::Internet.email(name = @name)
  end

  def to_array
    individual = []
    individual = [@name, @age, @company, @email]
    individual
  end

  def to_s
    "Name: #{@name}\n
    Age: #{@age}\n
    Company: #{@company}\n
    Email: #{@email}"
  end

end

$people = []

def create
  x = 1
  while x =< 50
    $people << Person.new.to_array
    x +=1
  end
  $people
end

create
