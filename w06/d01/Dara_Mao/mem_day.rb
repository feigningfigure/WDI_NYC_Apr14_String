class Soldier
 attr_accessor :first_name :last_name

 def initialize (first_name, last_name)
  @first_name, @last_name = first_name, last_name
 end

soldier = ["Alvin York", "Nina Price", "Percy Pinkerton", "Abigail Brand"]

  def print_last
    soldier.each do |full_name|
      puts full_name.split[1]
    end
  end

  def array_last
   soldier.each do |full_name|
     last_array << full_name.split[1]
  end

  def longest
    comp1 = []
    comp2 = []
      comp1 << array_last.pop
      comp2 << array_last.pop

      if comp1[0].length < comp2[0].length
        comp1 << comp2
      end
  end
end


