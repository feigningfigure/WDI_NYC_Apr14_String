class Scrumr

  attr_accessor :number_of_groups, :students, :groups

  def initialize
    # connecting instance variable to our global database
    @students = $students
  end

  def build_groups
    @groups = []
    binding.pry
    original_group_size = get_group_size
    # while my DB of students still has stuff in it
    until @students.length < original_group_size
      subset_of_students_array = @students.pop(get_group_size)
      new_group = Group.new
      new_group.add_students(subset_of_students_array)
      @groups << new_group
    end

    # get_group_size.times do |n|
    #   group = Group.new
    #   students_array = @students.pop()
    #   group.add_students()
    #   @groups <<
    # end

  end

  def start
    puts "Welcome to Scrumr"
    puts "How many groups do your want?"
    @number_of_groups = gets.chomp.to_i
  end

  def get_group_size
    @students.length/@number_of_groups
  end

end
