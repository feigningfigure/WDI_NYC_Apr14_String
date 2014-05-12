class Instagram


def self.get_photo(somebodyname)
     response = HTTParty.get("https://api.instagram.com/v1/media/popular?access_token=32850880.1fb234f.1f7a0c05e9824a39b0106927429898ea")
     if response.code.to_i ! = 200

  end
end
end
