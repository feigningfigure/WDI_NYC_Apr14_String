class Station < ActiveRecord::Base
     has_many :subwaylines, through: :station
end
