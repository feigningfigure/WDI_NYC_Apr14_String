class Band < ActiveRecord::Base
  belongs_to :genre
  has_many :instruments, through: :players
  has_many :players

end
