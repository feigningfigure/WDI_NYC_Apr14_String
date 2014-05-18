# == Schema Information
#
# Table name: vins
#
#  id          :integer          not null, primary key
#  vin_number  :integer
#  model_id    :integer
#  customer_id :integer
#


class Vin < ActiveRecord::Base
	belongs_to :model
	belongs_to :customer 
end
