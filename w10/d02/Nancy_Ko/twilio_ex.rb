require 'httparty'

class Twilio

	def self.get(url)
		return HTTParty.get(url)
	end


end













require 'httparty'

 
# put your own credentials here 
account_sid = 'AC37c4092ba2ee6ec7acec34ea01b06e35' 
auth_token = '48bc3aa6a24b5e37cd409ef84e504b4a' 
 
# set up a client to talk to the Twilio REST API 
client = curl -X get('https://api.twilio.com/2010-04-01/Accounts/AC37c4092ba2ee6ec7acec34ea01b06e35/Messages.json')

client.
JSON.generate({
	:from => '+16466792572', 
	:to => '9173184836', 
	:body => 'What to eat for lunch today?'   
})

	



# curl -X POST 'https://api.twilio.com/2010-04-01/Accounts/AC37c4092ba2ee6ec7acec34ea01b06e35/Messages.json' \
# --data-urlencode 'To=9173184836'  \
# --data-urlencode 'From=+16466792572'  \
# --data-urlencode 'Body=This is a test . hope it works ' \
# -u AC37c4092ba2ee6ec7acec34ea01b06e35:48bc3aa6a24b5e37cd409ef84e504b4a