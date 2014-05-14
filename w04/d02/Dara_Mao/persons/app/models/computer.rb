class Computer < ActiveRecord::Base
  has_many :applications, through: :units
  belongs_to :person
end
