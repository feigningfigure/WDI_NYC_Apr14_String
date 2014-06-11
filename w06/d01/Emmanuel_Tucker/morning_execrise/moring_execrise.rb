class Soldier
     attr_accessor :first_name , :last_name
     def initialize (first_name, last_name)
          @first_name , @last_name = first_name , last_name
     end
end

soldiers = []
soldiers << Soldier.new ("Alvin","York")
soldiers << Soldier.new ("Nina" ,"Price")
soldiers << Soldier.new ("Percy" ,"Pinkerton")
soldiers << Soldier.new ("Abigail" ,"Brand")

soldiers.each { |s| puts s.last_name}

s_last_name = soldiers.select { |s| s.last_name == "Price"}

Soldiers.map { |s| s.last_name }

