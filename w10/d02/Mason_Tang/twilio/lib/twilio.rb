
require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACcbe55cb2d86a6ac911a85384ec0096e7'
auth_token = 'edc099f3da7bc452ab9eec3648b726f6'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create({
	:from => '+17038703003',
	:to => '+19178816740',
	:body => 'asdf',
})
