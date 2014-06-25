require 'httparty'

class Twilio

  def self.send_sms(recipient_number, message)
    # Got this from the curl invocation at the bottom of this url:
    # https://www.twilio.com/user/account/developer-tools/api-explorer/message-create
    url = "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json"

    options = {
      basic_auth: {
        username: ENV['TWILIO_ACCOUNT_SID'],
        password: ENV['TWILIO_AUTH_TOKEN']
      },

      # POST requests have bodies (unlike GET requests which are apparently incorporeal)
      # The body is where form data (also referred to as "urlencoded data") lives.
      body: {
        From: '+16466792404',
        To: recipient_number,
        Body: message
      },

      debug_output: $stdout
    }

    return HTTParty.post(url, options)
  end

  def self.get(url)
    options = {
      basic_auth: {
        username: ENV['TWILIO_ACCOUNT_SID'],
        password: ENV['TWILIO_AUTH_TOKEN']
      }
    }

    options.merge!({
        debug_output: $stdout
    })

    return HTTParty.get(url, options)
  end

end

  #   curl -X POST "https://api.twilio.com/2010-04-01/Accounts/#{@account_sid}/Messages.json" \
  #   --data-urlencode "To=#{number}"  \
  #   --data-urlencode "From=#{@my_phone_number}"  \
  #   --data-urlencode 'Body="#{message}"' \
  #   -u @account_sid:[@auth_token]

  # AC77b638ebff1533aea4b08fa6dbcecb80
  # 6f5b55eae1d8418576239502a179c440