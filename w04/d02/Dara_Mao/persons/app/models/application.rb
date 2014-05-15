class Application < ActiveRecord::Base
  has_many :computers, through: :units
  has_many :units
end
