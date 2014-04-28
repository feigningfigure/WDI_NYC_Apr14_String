class Scrumr

  attr_accessor :number_of_groups, :students

  def initialize
    @students = $students
  end

  def start
    puts "Welcome to Scrumr"
    puts "how many groups do you want?"
    @number_of_groups = gets.chomp.to_i
  end

  def get_group_size
    @students.length/@number_of_groups
  end


end
