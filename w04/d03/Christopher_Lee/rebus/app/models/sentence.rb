class Sentence < ActiveRecord::Base
  include HTTParty

  def self.get_photo(word)
     url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=1315592455.5b9e1e6.25384f70ae7e4dba95691b9e98eed930"
    response = HTTParty.get(url)
    binding.pry
    image_url = response["data"][0]["images"]["standard_resolution"]["url"]
    image_url
  end
end
