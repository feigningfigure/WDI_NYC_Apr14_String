class Subject < ActiveRecord::Base

  has_many :works, through: :materials

  has_many :materials

end
