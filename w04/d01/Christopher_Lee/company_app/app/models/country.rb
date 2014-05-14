class Country < ActiveRecord::Base #Check
  has_many :distributors
  has_many :products, through: :distributors
end
