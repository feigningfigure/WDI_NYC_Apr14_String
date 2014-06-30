# Get twilio-ruby from twilio.com/docs/ruby/install - require 'twilio-ruby'

require 'awesome-print'
require 'twilio'

# Get your Account Sid and Auth Token from twilio.com/user/account
my_phone_number = ENV['MY_PHONE_NUMBER']
account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']

@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.account.messages.create(:body => "Jenny please?! I love you <3",
    :to => "+15558675309",
    :from => "+14158141829",
    :media_url => "http://www.example.com/hearts.png")
puts message.to
