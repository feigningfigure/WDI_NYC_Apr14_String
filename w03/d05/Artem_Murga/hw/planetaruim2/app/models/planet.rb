# == Schema Information
#
# Table name: planets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image_url  :string(255)
#  diameter   :integer
#  mass       :integer
#  life       :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Planet < ActiveRecord::Base
end
