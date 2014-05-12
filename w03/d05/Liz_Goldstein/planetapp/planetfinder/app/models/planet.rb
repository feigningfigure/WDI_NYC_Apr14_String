class Planet < ActiveRecord::Base
    has_many :moons

      def find_moon
        newmoons = []
        newmoons << Moon.find_by_planet_id(self.id)
        if newmoons == nil
          puts "No moons"
        else
          newmoons[0][:name]
        end
      end


    end


