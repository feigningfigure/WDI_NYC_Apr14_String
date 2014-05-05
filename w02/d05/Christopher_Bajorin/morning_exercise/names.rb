require 'pry'

$spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan VanWelie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]


def rip

  student_hash = Hash.new

  $spring_wdi.each do |student|
    student_string = student.to_s
    first, last = student_string.split
    key = []
    key[0] = first.to_s.downcase[0]
    key[1] = last.to_s.downcase[0]
    namekey = key.join("")
    name_key = namekey.to_sym
    student_hash[name_key] = [last, first]
  end
  puts student_hash
end

rip

=begin

  $spring_wdi.each do |student|
    student_string = student.to_s
    first, last = student_string.split
    key = []
    key[0] = first.to_s.downcase[0]
    key[1] = last.to_s.downcase[0]
    namekey = key.join("")
    name_key = namekey.to_sym
    student_hash[name_key] = [last, first]
  end

end
