# THIS IS A MODEL
class Post < ActiveRecord::Base

  # this kind of logic belongs here, and not in the controller
  def author_photo
    # make API call, turn the JSON into a Hash
    response_hash = JSON.parse(HTTParty.get("http://uifaces.com/api/v1/random").body)

    # extract the URL of photo and add it to an array of URLs
    photo_url = response_hash["image_urls"]["bigger"]

    # return just the URL
    photo_url
  end

end
