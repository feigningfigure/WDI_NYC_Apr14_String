require 'httparty'

class Twilio
	# def initialize
	# 	@SID = ENV["TWILIO_SID"]
	# 	@AUTH_TOKEN = ENV["TWILIO_AUTH_TOKEN"]
	# 	@MY_NUMBER = ENV["MY_NUMBER"]
	# end

	def self.get(url)
		options = {
			basic_auth: {
				username: ENV["TWILIO_SID"],
				password: ENV["TWILIO_AUTH_TOKEN"]
			},
			body: {
				From: "+16466792450",
				To: '+1"#{@MY_NUMBER}"',
				Body: message
			}
		}

		return HTTParty.get(url, options)
	end


	# def send_sms
	# 	$ curl -XPOST https://api.twilio.com/2010-04-01/Accounts/"#{@SID}"/Messages.json  \
	# 	-d "Body=Hello, world!" \
	# 	-d "From=+16466792450"  \
	# 	-d 'To=+1"#{@MY_NUMBER}"'  \
	# 	-u "#{@AUTH_TOKEN}"
	# end
end





