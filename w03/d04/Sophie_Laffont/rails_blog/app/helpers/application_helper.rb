module ApplicationHelper

  def my_method
    "HELLO!!!!"
  end

  def kitten_photo
    # .html_safe un-cleans special characters out of your text
    "<img class='author_photo' src='http://placekitten.com/100/100'/>".html_safe
  end

  def random_person_photo
    # make API call, turn the JSON into a Hash
    response_hash = JSON.parse(HTTParty.get("http://uifaces.com/api/v1/random").body)

    # extract the URL of photo and add it to an array of URLs
    photo_url = response_hash["image_urls"]["bigger"]

    "<img class='author_photo' src='#{photo_url}'/>".html_safe
  end

end
