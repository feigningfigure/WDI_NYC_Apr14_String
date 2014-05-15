class Genre < ActiveRecord::Base
  has_many :books, through: :genrecatalogs
  has_many :genrecatalogs
end
