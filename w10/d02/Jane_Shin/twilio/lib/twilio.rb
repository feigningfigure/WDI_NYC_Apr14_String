require 'httparty'

class Twilio
	def initialize
		@SID = ENV["TWILIO_SID"]
		@AUTH_TOKEN = ENV["TWILIO_AUTH_TOKEN"]
		@MY_NUMBER = ENV["MY_NUMBER"]
	end

	basic_auth = "{username: #{@SID}, password: #{@AUTH_TOKEN}}"

	def self.get(url)
		options = {
			basic_auth: TWILIO::basic_auth,
			body: {
				From: "+16466792450",
				To: ENV["MY_NUMBER"],
				Body: message
			}
		}

		return HTTParty.get(url, options)
	end


def self.send_sms(recipient_number, message)
      url = "https://api.twilio.com/2010-04-01/Accounts/ACbae098e3c4ed32d292c6d3694dc2042f/Messages.json"

      options = {
        basic_auth: {
          username: ENV['TWILIO_SID'],
          password: ENV['TWILIO_AUTH_TOKEN']
        },

        body: {
          From: "+16466792450",
          To: recipient_number,
          Body: message
        }

      }	

      return HTTParty.post(url, options)
    end
end





