class Unit < ActiveRecord::Base
  belongs_to  :computer
  belongs_to  :application
end
