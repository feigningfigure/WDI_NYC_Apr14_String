require 'faker'

$people_array = []

class Person
  def initialize
    @name = Faker::Name.name
    @age = rand(18..150)
    @company = Faker::Company.name
    @email = Faker::Internet.email(name = @name)

    # @people_array = []
  end

  def to_s
    "#{@name} is #{@age} years old and works for #{@company}. Email #{@name} at #{@email}\n\n"
  end

  def self.fill_people_array
    50.times do
      $people_array << Person.new
    end
  end

  def self.all_to_s
    $people_array.each do |person|
      puts person.to_s
    end
  end
end
