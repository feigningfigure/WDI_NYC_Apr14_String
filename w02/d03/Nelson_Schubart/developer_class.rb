
class Developer

  attr_accessor :first_name, :last_name, :language

  def initialize(language, hash_students)
    @language = language
    @first_name = hash_students[:first_name]
    @last_name = hash_students[:last_name]
  end

  def to_s
    "My name is #{@first_name} #{@last_name} and I love to program in #{@language}"
  end
end






