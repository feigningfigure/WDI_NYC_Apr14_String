# JOHN's CLIENT INFO
# CLIENT ID 4103708a8bb2413ea434757ae68c811f
# CLIENT SECRET a965a9c889b04217819a17fe12e61948
# WEBSITE URL http://johnrandall.com
# REDIRECT URI  http://johnrandall.com


# ?client_id=4103708a8bb2413ea434757ae68c811f

module Instagram

  include HTTParty

  def self.pull_recent_selfies(number_hash)
    # number = number_hash["number_requested"].to_i
    url = "https://api.instagram.com/v1/tags/selfie/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
    response = HTTParty.get(url)
    selfie_array = []

    # number.times do
    3.times do
      x = rand(1..20) - 1
      image_url = response["data"][x]["images"]["standard_resolution"]["url"]
      username = response["data"][x]["user"]["username"]
      current_selfie_array = [username, image_url]
      selfie_array << current_selfie_array
    end

    return selfie_array
  end
end


 # [[],[],[]]

 #  url = "https://api.instagram.com/v1/tags/selfie/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
 #  response = HTTParty.get(url)

 #  x = rand(1..20) - 1
 #  image_url = response["data"][x]["images"]["standard_resolution"]["url"]
 #  username = response["data"][x]["user"]["username"]
 #
