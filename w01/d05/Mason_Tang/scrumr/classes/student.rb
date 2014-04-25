class Student
  attr_accessor :name

  def initialize(student_hash)
      @name = student_hash["Name"]
  end

  def to_s
    "My name is #{@name}"
  end
end
