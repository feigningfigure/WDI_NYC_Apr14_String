require 'awesome-print'
require 'twilio'

class Twilio
  def self.get(url)
    return HTTParty.get(url)
      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID']
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        }
      }
  end

end
