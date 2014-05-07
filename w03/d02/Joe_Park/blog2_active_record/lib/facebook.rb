class Facebook

  def self.get_photo(author_name)
    url = "http://graph.facebook.com/#{author_name}/picture"
    response = HTTParty.get(url)
    if response.code != "200"
      "http://placekitten.com/100/100"
    else
      response.last_uri.to_s
    end
  end

end
