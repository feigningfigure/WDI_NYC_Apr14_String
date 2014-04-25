class Scrumr

  attr_accessor :number_of_groups, :students, :groups

  def initialize
    # connecting instance variable to our global database
    @students = $students
  end

  def build_groups
    @groups = []

    # while my DB of students still has stuff in it
    while @students.length >= get_group_size
      @groups << Group.new.add_students(@students.pop(get_group_size))
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
