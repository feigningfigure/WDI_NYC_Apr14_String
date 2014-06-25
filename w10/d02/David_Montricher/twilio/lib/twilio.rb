require 'httparty'

class Twilio

  def self.send_sms(recipient_number, message)
      # Got this from the curl invocation at the bottom of this url:
      # https://www.twilio.com/user/account/developer-tools/api-explorer/message-create
      url = "https://api.twilio.com/2010-04-01/Accounts/AC0f8741036e06b515d23e48808c6c4391/Messages.json"

      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID'],
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        },

        # POST requests have bodies (unlike GET requests which are apparently incorporeal)
        # The body is where form data (also referred to as "urlencoded data") lives.
        body: {
          From: "+15162034469",
          To: recipient_number,
          Body: message
        },

        debug_output: $stdout
      }

      return HTTParty.post(url, options)
    end

  def self.view_account(account_sid)
      url = "https://api.twilio.com/2010-04-01/Accounts/#{account_sid}.json"

      # Comment out all of the other 'options' statements to
      # see what happens when you don't try to authenticate at all.
      options = {}

      # This is the top level of abstraction, we can just say
      # "yo HTTParty, use HTTP basic authentication"
      options = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID'],
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        }
      }

      # This is us doing HTTP basic auth "manually" by pasting the
      # encrypted header from a previous request
      # options = {
      #   headers: {
      #     "Authorization" => "Basic QUMwZjg3NDEwMzZlMDZiNTE1ZDIzZTQ4ODA4YzZjNDM5MTpiNGRlNDJmMjBhYWExZWUxMmUwZTZkYjBhNjc1ZTRlZQ=="
      #   }
      # }

      options.merge!({
          debug_output: $stdout
      })

      return HTTParty.get(url, options)
  end

end
