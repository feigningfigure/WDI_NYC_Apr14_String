class Planet < ActiveRecord::Base

  def convert_mass
      self.mass / 1000.00
  end
end
