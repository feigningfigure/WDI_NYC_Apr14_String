module Instagram
  
	# include HTTParty
	# url = "https://api.instagram.com"

	def self.popular_url
		url =  "https://api.instagram.com/v1/media/popular?client_id=70046fd70d824d79950d52b0aef8bc15"
		response = HTTParty.get(url)
		jsonresponse = JSON.parse(response.body)
		
		results = []
		jsonresponse["data"].each do |x|
			results << x["images"]["low_resolution"]["url"]
		end
		results
	end


end


		# @results = jsonresponse["data"].each do |x|
		# 	[x]["images"]["low_resolution"]

		# end


# url = "http://musicbrainz.org/ws/2/artist?query=The%20Who"
#   # Get the XML Data
#   artist_xml = HTTParty.get(url)
#   #Create HASH from JSON
#   @artist_array = artist_xml["metadata"]["artist_list"]#[0]["artist"]

# https://api.instagram.com/v1/media/3?access_token=175730728.f59def8.763f78b4bb9e435cabd3c203e1ddf0bf