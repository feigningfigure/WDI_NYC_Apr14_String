class Astronaut < ActiveRecord::Base
  has_many :voyages
  has_many :planets, through: :voyages
end
