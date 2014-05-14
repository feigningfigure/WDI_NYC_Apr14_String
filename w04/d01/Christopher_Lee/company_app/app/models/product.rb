class Product < ActiveRecord::Base
  belongs_to :company
  has_many :distributors
  has_many :countries, through: :distributors
end
