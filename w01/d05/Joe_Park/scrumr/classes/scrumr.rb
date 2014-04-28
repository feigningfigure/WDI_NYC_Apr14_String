class Scrumr

  attr_accessor :number_of_groups, :students, :groups
  # TODO: make this attr_reader
  attr_accessor :group_size

  def initialize
    # connecting instance variable to our global database
    @students = $students.shuffle
    @group_size = 0
  end

  def build_groups
    @groups = []
    # binding.pry
    # makes sure group_size
    set_group_size
    # while my DB of students still has stuff in it
    until @students.length < @group_size
      subset_of_students_array = @students.pop(@group_size)
      new_group = Group.new
      new_group.add_students(subset_of_students_array)
      @groups << new_group
    end
    # if there are any students left
    last_group_added_to = 0
    while !@students.empty?
      extra_student = Student.new(@students.pop)
      @groups[last_group_added_to].students << extra_student
      if last_group_added_to > @groups.length-1
        last_group_added_to = 0
      else
        last_group_added_to += 1
      end
    end
    print_groups
  end

  def start
    puts "Welcome to Scrumr"
    puts "How many groups do your want?"
    @number_of_groups = gets.chomp.to_i
    set_group_size
    build_groups
  end

  def print_groups
    @groups.each_with_index do |group, index|
      student_names = []
      group.students.each do |student|
        student_names << student.name
      end
      print "\n\nGroup #{index}\n"
      p student_names
    end
  end

  def set_group_size
    # if there's no group_size set already
    @group_size = @students.length/@number_of_groups
  end

end
