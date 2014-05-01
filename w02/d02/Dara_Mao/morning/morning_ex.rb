$languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

$spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

class Language
  attr_accessor :language

  def favorite_language
    rand_index = rand(0...6)
    favorite_language= $languages[rand_index]
  end
end

  class Developer
    attr_accessor :favorite_language :first_name :last_name

    def initalize(hash_student, favorite_language)
      @first_name = hash_student[:first_name] #hash key is first name
      @last_name = hash_student[:last_name] #hash value is last name
      @favorite_language
    end

    def all_name(index_num)
      all_name=[]
      $spring_wdi.each do |key|
      all_name << key.split(' ')

    #if the index is divisible by 2, then its a last name
    #if the index is not divisible by 2, then its a first name

    last_name = []
    first_name = []

    all_name.each do |key|
      if key % 2 == 0
        last_name << all_name[index_num]
      else
        first_name << all_name[index_num]
      end
    end

  def to_s #to_s, to_i, to_whatever doesnt need puts in the statement
    "My name is #{@first_name} #{@last_name} and I love to program in #{@favorite_language}."
  end
end

#!!!!! REVIEW 4/30: Instructor's Solution:
wdi_objects = []

spring_wdi.each do |x|
  first_name = x.split[0]
  last_name = x.split[1]
  favorite_language = languages.sample #randomly pick an element from language

  wdi_objects << Developer.new(favorite_language, {:first_name => first_name, :last_name => last_name})
end

#Functional Programming
