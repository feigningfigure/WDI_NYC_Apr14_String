require 'Faker'

class Person
     attr_accessor :name

     def initialize(name)
          @name = name
          def to_s
               return "My name is #{name} and I will destroy you!"
          end
     end
end


def create_enemies(number_of_enemies)
     array_of_enemies = []
     number_of_enemies.times {
          array_of_enemies << Person.new(Faker::Name.name)
     }
     return array_of_enemies
end

def list_enemies(enemy_array)
     enemy_array.each do |enemy|
          puts enemy
     end
end

enemy_array = create_enemies(100)
enemy_roster = list_enemies(enemy_array)

list_enemies(enemy_roster)

