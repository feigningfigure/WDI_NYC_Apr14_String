# This Morning's Goal

```ruby
require 'awesome_print'

require 'twilio'

describe Twilio do

    it "should send a text message" do
        my_phone_number = ENV['MY_PHONE_NUMBER']
        result = Twilio.send_sms(my_phone_number, "Hello, world!")
        ap result, indent: -6
        expect(result["status"]).to eq("queued")
    end

end
```

# Twilio

You can try Twilio completely free.

Your free trial number has some restrictions:

1. Every phone call will begin with a "Thanks for using your trial account" message
2. Every SMS will have "Sent from your trial number" prepended

Other than that, it's a fully-functional Twilio number!


# APIs over HTTP

How many different ways are there to generate an HTTP request?

- curl
- HTTParty
- a browser
- telnet


# Getting Started

## Setting up your Twilio account

1. https://www.twilio.com/try-twilio
2. Enter verification code
3. {{Get Started}}
4. Make test call (there will be an intro message asking you to upgrade, and you'll have to press a key to hear your message)
5. Copy and paste terminal command
6. Send test SMS
7. Copy and paste terminal command
8. {{Go To Your Account}}


## Setting up your environment

1. Add your Twilio Account SID and Auth Token from your dashboard to your bash dotfiles.


## Writing some code

1. `rspec --init`
2. `mkdir lib`
3. https://www.twilio.com/docs/api/rest
