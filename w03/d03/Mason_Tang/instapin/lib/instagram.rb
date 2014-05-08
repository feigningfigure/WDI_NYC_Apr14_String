# module Instagram



# #   def photo_url
# #     url = "https://api.instagram.com/v1/media/popular?client_id=21f35207dfd74fcca6a8a187fb9b96ab"
# #     response = HTTParty.get(url)

# #     # if there's an error...
# #     if response.code.to_i != 200
# #       "http://placekitten.com/100/100"
# #     else
# #       response.request.last_uri.to_s
# #     end
# #   end


#     def get_random_image
#     response = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=21f35207dfd74fcca6a8a187fb9b96ab")
#     random_image_data = response["data"].sample
#     random_image_url = random_image_data[0]["images"]["standard_resolution"]["url"]
#     random_image_url
#   end

# end


