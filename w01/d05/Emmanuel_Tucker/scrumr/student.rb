class students
  attr_accessor :name


  def initialize(student_hash)
    @name = $students["name"]
  end


def to_s
  "My name is #{@name}"
  end
end
