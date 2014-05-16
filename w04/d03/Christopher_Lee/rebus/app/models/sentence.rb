class Sentence < ActiveRecord::Base
  include HTTParty
    before_create :photo_convert
  def get_photo!(word)
     url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=1315592455.5b9e1e6.25384f70ae7e4dba95691b9e98eed930"
    response = HTTParty.get(url)
    image_url = response["data"][0]["images"]["standard_resolution"]["url"]
    word.gsub!(/#{word}/, image_url)
  end

  private
    def photo_convert
      self.photo_1 = get_photo!(self.photo_1)
      self.photo_2 = get_photo!(self.photo_2)
      self.photo_3 = get_photo!(self.photo_3)
    end
end
