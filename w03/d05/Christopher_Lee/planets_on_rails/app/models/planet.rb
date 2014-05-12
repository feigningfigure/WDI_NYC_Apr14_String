class Planet < ActiveRecord::Base
  has_many :moons
  validates :name, :image_url, :diameter, :mass, presence: true
end
