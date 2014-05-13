class Computer < ActiveRecord::Base
  has_many :applications
  belongs_to :person
end
