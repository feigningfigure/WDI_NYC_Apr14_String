class SubwayLine < ActiveRecord::Base
  validates :name, presence: true
end
