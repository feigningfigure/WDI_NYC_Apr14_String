require 'awesome_print'

require 'twilio'


# put your own credentials here
$TWILIO_SID = 'AC17a537010952bdb7bb26fe3a7168add0'
$TWILIO_AUTH_TOKEN = 'd5ca21139e8a649a9403621123357f61'
twilio_sid = $TWILIO_SID
auth_token = $TWILIO_AUTH_TOKEN

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create(
  :from => '+19782417181',
  :to => '+16037706802',
  :body => 'Hey there clown dick!'
)

# rspec:

# describe Twilio do

#     it "should send a text message" do
#         my_phone_number = ENV['MY_PHONE_NUMBER']
#         result = Twilio.send_sms(my_phone_number, "Hello, world!")
#         ap result, indent: -6
#         expect(result["status"]).to eq("queued")
#     end

# end
