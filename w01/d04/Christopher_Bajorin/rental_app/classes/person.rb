class Person

  attr_accessor :name, :age, :gender, :apartment

  def initialize(nam=nil,gen=nil)
    @name = nam
    @age = 0
    @gender = gen
    @apartment = []
  end

  def apartment_array
    @apartment <<

  def get_name
    puts "input your name"
    @name = gets.chomp
  end

  def get_age
    puts "age"
    @age = gets.chomp
  end

  def get_gen
    puts "enter your gender"
    @gender = gets.chomp
  end

  def other_items
    puts "are there any other required amnities"




end
