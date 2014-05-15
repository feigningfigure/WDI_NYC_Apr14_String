module Instagram

  def self.get_photo
    url = HTTParty.get("https://api.instagram.com/v1/media/popular?access_token=15238766.1fb234f.d5fc10aa3a784fcbb989b7e716209bc9")
    url["data"][0]["images"]["standard_resolution"]["url"]
  end

end

class Photo < ActiveRecord::Base

end
