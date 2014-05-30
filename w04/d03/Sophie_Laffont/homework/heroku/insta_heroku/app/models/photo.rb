class Photo < ActiveRecord::Base
 # def self.get_photo


 def self.get_photo
    url = HTTParty.get("https://api.instagram.com/v1/media/popular?access_token=15238766.1fb234f.d5fc10aa3a784fcbb989b7e716209bc9")
    photo = url["data"][0]["images"]["standard_resolution"]["url"]
    self.save_photo(photo)
    return photo
  end

  def self.save_photo(photo)
    new_photo = Photo.new
    new_photo.save
  end



end
