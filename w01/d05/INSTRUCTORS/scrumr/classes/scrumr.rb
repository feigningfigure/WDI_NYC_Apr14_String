class Scrumr

  attr_accessor :number_of_groups, :students, :groups

  def initialize
    # connecting instance variable to our global database
    @students = $students
    @groups = [Group.new]
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
