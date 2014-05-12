require 'faker'
require 'pry'



class Human

  attr_accessor :name, :age, :gender


  def initialize(name, age, gender)
    @name = Faker::Name.name
    @age = Faker::Number.number(2)
    @gender =


  end

  def speak
    puts "Hi, I'm #{@name}."








end





