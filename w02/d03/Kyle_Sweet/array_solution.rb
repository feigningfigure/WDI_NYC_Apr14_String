spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]


class Developer

attr_accessor :first_name, :last_name, :favorite_language #always use accessors

  def initialize(favorite_language, hash_students)#{hash_students} #Why do I need to INITIALIZE???
    @favorite_language = favorite_language #instance variable = array
    @first_name = hash_students[:first_name] #---> keys
    @last_name = hash_students[:last_name] #---> keys
  end


  def to_s #don't use a puts statement in to_s methods
    "My name is #{@first_name} #{@lastname} and I love to program in #{@favorite_language}."
  end

  wdi_objects = [] #creates new array

  spring_wdi.each do |student| #for each variable in spring_wdi do the following for said variable "student can be anything"
    first_name = student.split[0] #takes 0 value which reads a first name "student can be anything, match to do |something|"
    last_name = student.split[1] #takes 1 value which reads a last name
    favorite_language = languages.sample #.sample takes a random selection from languages array

    wdi_objects << Developer.new(favorite_language, {:first_name => first_name, :last_name => last_name} #{this is a hash argument/options hash, don't need them but do it})
    #Developer.new is a new array (pull a favorite language,:first_name key from hash converts to first name in an array, :last_name key from hash is converted to last_name variable in array)

    #SKETCH THIS OUT LATER AND WORK THROUGH IT!!!

  end
