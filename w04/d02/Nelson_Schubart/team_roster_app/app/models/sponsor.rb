class Sponsor < ActiveRecord::Base

  has_many :players, through: :contracts

  has_many :contracts


end
