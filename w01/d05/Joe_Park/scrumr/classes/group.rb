class Group
  attr_accessor :students

  def initialize
    @students = []
  end

  def add_students(students_array)
    students_array.each do |student_hash|
      @students << Student.new(student_hash)
    end
  end

end
