# == Schema Information
#
# Table name: customers
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Customer < ActiveRecord::Base

 has_many :models, through: :vins
 has_many :vins 

end

