class Station < ActiveRecord::Base
  validates :address, presence: true
end
