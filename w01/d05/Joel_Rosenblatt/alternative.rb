

class Array
  def in_groups(num_groups)
    return [] if num_groups == 0
    slice_size = (self.size/Float(num_groups)).ceil
    self.each_slice(slice_size).to_a
  end
end

instructors = ["Omar", "Neel", "Keri"]


$students.shuffle!
instructors.shuffle!
$students.in_groups(3).to_a.each { |group| puts "Group #{instructors[rand(0..2)]} is #{group}" }
