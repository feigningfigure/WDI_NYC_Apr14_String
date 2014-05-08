#The most popular instagram images in the last 24 hours
# class Instagram

#Instagram popular images
# def result
  result = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=0781c2e3fde74d18acf2a856eb0c2de2")
#   return result
# end

#Returns any tag
# def tags
tags = result["data"][19]["tags"] #returns an array each do
  # return tags
# end
#When the image was created
# def created_time
created_time = result["data"][19]["created_time"]
  # return created_time
# end
#Description of the image
text = result["data"][19]["caption"]["text"]

#The IMAGE !!!!!
image_url = result["data"][19]["images"]["standard_resolution"]

#user's full name
username = result["data"][19]["caption"]["full_name"]

#image location ???????
#Create a database of images that have location name and url
#loop through and see how many image has location that is not NIL or empty []
location = result["data"][index]["location"]["name"] #hash

#count = how many friends who likes her
count = result["data"][17]["likes"]["count"]

# end


#TO-DO

#loop through and see how many image has location that is not NIL or empty []

#loop through size = result["data"].length
