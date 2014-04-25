class Person
  attr_accessor :name, :age, :gender
  attr_reader :apartment

  def initialize(name, age, gender)
    @name = name
    @age = age.to_i
    @gender = gender.to_s
    @apartment =[]
  end

  def to_s
    puts "#{name} is a #{age} year-old #{gender}."
    # unless @apartment.empty?
    print "# currently lives in #{@apartment}"
  end

  def take_apartment(apartment)
    @apartment << apartment
  end

end


# chris = Person.new('chris','27','male')
