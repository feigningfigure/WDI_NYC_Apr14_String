class Transfer < ActiveRecord::Base
   belongs_to :station
   belongs_to :subway_line
end

