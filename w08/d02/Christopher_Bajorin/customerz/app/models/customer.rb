# == Schema Information
#
# Table name: customers
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address      :string(255)
#  email        :string(255)
#  loyalty_code :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Customer < ActiveRecord::Base
end
