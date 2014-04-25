class Student
  def name
    @name
  end
def shout(word)
  puts word.upcase
end
end

joel = Student.new


def shout(word)
  puts word.upcase
end
puts "shout a word"
word = gets.chomp
shout(word)
