module Imgur

  include HTTParty

  headers 'Authorization' => 'Client-ID ff4c96c51f32bbd'

  def get_random_image
    response = Imgur.get("https://api.imgur.com/3/gallery.json")
    random_image_data = response["data"].sample
    random_image_url = random_image_data["link"]
    random_image_url
  end

end
