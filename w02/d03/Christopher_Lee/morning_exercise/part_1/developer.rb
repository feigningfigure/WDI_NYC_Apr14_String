# MY_CODE
# class Developer
#   attr_accessor :first_name, :last_name, :favorite_language
#   $languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

#   def initialize(first_name, last_name)
#     @first_name = first_name
#     @last_name = last_name
#     @favorite_language = $languages.shuffle[0]
#   end

#   def to_s
#     "My name is #{@first_name} #{@last_name} and I love to program in #{@favorite_language}."
#   end

# end

class Developer
  attr_accessor :first_name, :last_name, :favorite_language

  def initialize(favorite_language, hash_students)
    @favorite_language = favorite_language
    @first_name = hash_students[:first_name]
    @last_name = hash_students[:last_name]
  end

   def to_s
     "My name is #{@first_name} #{@last_name} and I love to program in #{@favorite_language}."
   end

end
