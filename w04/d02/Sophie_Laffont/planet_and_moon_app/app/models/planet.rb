class Planet < ActiveRecord::Base
  has_many :moons
  has_many :voyages
  has_many :astronauts, through: :voyages
end
