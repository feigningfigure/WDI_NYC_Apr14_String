module Facebook

  include HTTParty

  def get_facebook_headshot_url
    url = "http://graph.facebook.com/#{self.name}/picture"
    response = HTTParty.get(url)

    # if there's an error...
    if response.code.to_i != 200
      "http://placekitten.com/100/100"
    else
      response.request.last_uri.to_s
    end
  end

end
