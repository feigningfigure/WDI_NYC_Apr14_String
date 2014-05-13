class Gallery < ActiveRecord::Base
  # gives all gallery instances a .gallery method
  has_many :artists
  # note: you must also have a 'artists' table
  # and it must have a column called 'galleries_id'

  # # hand-rolled version of 'has_many :artists'
  # def artists
  #   # make some SQL query
  #   Artist.where("Gallery_id=#{self.id}")
  # end

end
