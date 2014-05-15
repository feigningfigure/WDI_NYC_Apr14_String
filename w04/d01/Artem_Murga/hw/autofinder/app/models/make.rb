# == Schema Information
#
# Table name: makes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  country    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Make < ActiveRecord::Base

	has_many :models
	
end
