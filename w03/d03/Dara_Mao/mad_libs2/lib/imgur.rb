module Imgur

  include HTTParty

  headers 'Authorization' => 'Client-ID 3aa2c421e6e822d'

  def get_random_image
    response = Imgur.get("https://api.imgur.com/3/gallery.json")
    random_image_data = response["data"].sample
    random_image_url = random_image_data["link"]
    random_image_url
  end

end
