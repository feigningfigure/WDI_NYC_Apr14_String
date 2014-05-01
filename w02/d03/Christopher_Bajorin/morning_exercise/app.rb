require_relative 'arrays'


# class Developer

#   attr_accessor :first, :last, :lang

#   def initialize
#     @first
#     @last
#     @lang
#   end

#   def split
#     x = rand(1..$spring_wdi.count )
#     dev_names = $spring_wdi[x-1].split(' ')
#     @first = dev_names[0]
#     @last = dev_names[1]
#   end

#   def get_lang
#     x = rand(1..$languages.length)
#     @lang = $languages[x-1]
#   end

#   def to_s
#     "My name is #{@first} #{@last}, and I love #{@lang}"
#   end

# end

# def create_array
#   dev_array = []
#   x = 10
#   while x > 0
#     new_dev = Developer.new
#     new_dev.split
#     new_dev.get_lang
#     dev_array << new_dev.to_s
#     x -= 1
#   end
#   puts dev_array
# end

# create_array

class Developer

  attr_accessor :first, :last, :lang

  def initialize(lang, hash_students)
    @lang = lang
    @first = hash_students[:first]
    @last = hash_students[:last]
  end

  def to_s
    "My name is #{@first} #{@last} and I love to program in #{@lang}"
  end

end

dev_objects = Array.new

$spring_wdi.each do |student|
  first = student.split[0]
  last = student.split[1]
  lang = $languages.sample
  student_hash = { :first => first, :last => last }
  dev_objects << Developer.new(lang, student_hash)
end
