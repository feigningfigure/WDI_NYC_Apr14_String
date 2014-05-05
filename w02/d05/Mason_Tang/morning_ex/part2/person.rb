require 'Faker'

class Person



  def initialize
    @name = Faker::Name.name
    @age = rand(18..75)
    @company = Faker::Company.name
    @email = Faker::Internet.email(name = @name)

  end

  def to_s
    return "#{@name}, #{@age}, #{@company}, #{@email}"
  end
end

arr =[]
50.times do
  arr << Person.new
end

arr.each do |person|
  puts Person.new.to_s

end
