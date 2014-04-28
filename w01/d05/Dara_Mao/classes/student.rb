class Student
  attr_accessor :name # this creates method to give access to to match the instance @name

  def initialize(student_hash)
    @name = $students["Name"]
  end

  def to_s
    "My name is #{@name}" #how to put the name of the studetns

  end
end
