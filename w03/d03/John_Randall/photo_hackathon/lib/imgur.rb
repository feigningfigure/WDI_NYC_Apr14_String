##

module Imgur 

  include HTTParty

  # http://imgur.com/

  # headers 'Authorization' => 'Client-ID ?????????'

  def get_random_image
    response = Imgur.get("https://api.imgur.com/3/gallery.json")
    random_image_data = response["data"].sample
    random_image_url = random_image_data["link"]
    random_image_url
  end

end

# api client codes below
# client_id: dc52af742a774c2
# client_secret: 7f069ce943689b8de1a978afeb85716565b68a14

