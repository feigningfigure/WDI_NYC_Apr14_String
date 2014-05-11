class Planet < ActiveRecord::Base
  validates :name, :image_url, :diameter, :mass, presence: true
end
