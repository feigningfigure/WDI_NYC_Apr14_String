class Voyage < ActiveRecord::Base
  belongs_to :astronaut
  belongs_to :planet
end
