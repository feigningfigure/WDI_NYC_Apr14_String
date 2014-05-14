class Operator < ActiveRecord::Base

  has_many :oilfields, through: :stakes


  has_many :stakes
end
