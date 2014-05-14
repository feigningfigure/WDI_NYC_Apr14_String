class Distributor < ActiveRecord::Base #Check
  belongs_to :product
  belongs_to :country
end
