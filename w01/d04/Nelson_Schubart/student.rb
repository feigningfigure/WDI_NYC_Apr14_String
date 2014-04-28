
# define a class called student, with two methods and an attr_accessor
class Student

  attr_accessor :name

  def initialize(student_hash)
    @name = student_hash["Name"]

  # any time you call the method to_s, will get "my name "
  def to_s
    "My name is #{@name}"
  end
end
