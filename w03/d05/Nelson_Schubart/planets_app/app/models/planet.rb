class Planet < ActiveRecord::Base
  has_many :moons, :dependent => :destroy




end
