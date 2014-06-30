require 'httparty'

class Twilio

  BASE_URI = 'https://api.twilio.com/2010-04-01'
  BASIC_AUTH = {
        basic_auth: {
          username: ENV['TWILIO_ACCOUNT_SID'],
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        }
      }

  def self.get_response(account_sid)
    return HTTParty.get("#{Twilio::BASE_URI}/Accounts/#{account_sid}.json",Twilio::BASIC_AUTH)
  end

  def self.send_sms(recipient_number, message)
      url = "#{Twilio::BASE_URI}/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json"
      # REPEAT
      options = Twilio::BASIC_AUTH
      options[:body] = {
          From: "+13603287737",
          To: recipient_number,
          Body: message
        }

      return HTTParty.post(url, options)
    end

  def self.view_account(account_sid)
    get_response(account_sid)
  end

  def self.view_sms(sms_sid)
    get_response(sms_sid)
  end

end

#   def self.view_account(account_sid)
#     get_response(account_sid)
#       # url = "https://api.twilio.com/2010-04-01/Accounts/#{account_sid}.json"

#       # url = "#{Twilio::BASE_URI}/Accounts/#{account_sid}.json"

#       # options = Twilio::BASIC_AUTH

#       #return HTTParty.get(url, options)

#   end

#   def self.view_sms(sms_sid)
#     # url = "#{Twilio::BASE_URI}/Accounts/#{account_sid}.json"
#     # options = Twilio::BASIC_AUTH

#     # return HTTParty.get(url, options)
#     get_response(sms_sid)
#   end

# end
