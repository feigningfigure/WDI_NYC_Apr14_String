# def developer
  # student = spring_wdi
  # for x do student_array(x)
  class Developer

    attr_accessor :language, :first_name, :last_name

    def initialize(language, hash_students)
      @language = language
      @first_name = hash_students{:first_name}
      @last_name = hash_students{:last_name}
    end


  def pull_array(language, name)

  language = languages.shuffle[0]

  student = spring_wdi.each

  end

    def to_s
    "My name is #{@first_name} #{@last_name}and I love to program in #{@language}."
  end

end

    languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

    spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

    wdi_objects = []

    spring_wdi.each do |student|
    first_name = student.split[0]
    last_name = student.split[1]
    #sample will pick a random number from an array and return it
    language = languages.sample

    #Ruby accepts hash arguments. Type inference= certain languages can interpret the class of the object it's dealing with based on the arguments it's passed.

    wdi_objects << Developer.new(language, :first_name => first_name, :last_name => last_name)

  end
