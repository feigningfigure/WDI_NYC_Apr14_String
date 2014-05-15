# == Schema Information
#
# Table name: models
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  make_id :integer
#

class Model < ActiveRecord::Base
	belongs_to :make 

	has_many :vins
	has_many :customers, through: :vins
end

