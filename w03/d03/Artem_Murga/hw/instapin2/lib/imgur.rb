require 'httparty'

module Instagram

  include HTTParty

  headers 'Authorization' => 'Client-ID 2f99afc228896b1'

  def get_random_image
    response = Imgur.get("https://api.imgur.com/3/gallery.json")
    random_image_data = response["data"].sample
    random_image_url = random_image_data["link"]
    random_image_url
  end

end
