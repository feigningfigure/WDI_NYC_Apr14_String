require 'httparty'

class Twilio

  ACCT_PHONE_NUMBER="+19145954798"
  AUTH_HASH = {
    # debug_output: $stdout,
    basic_auth: {
      username: ENV['TWILIO_SID'],
      password: ENV['TWILIO_TOKEN']
    }
  }
  BASE_URI = "https://api.twilio.com/2010-04-01"

  def self.send_sms(recipient_number, message)
    url = "#{BASE_URI}/Accounts/#{ENV['TWILIO_SID']}/Messages.json"

     options = Twilio::AUTH_HASH.merge({body: {
      From: Twilio::ACCT_PHONE_NUMBER,
      To: recipient_number,
      Body: message
      }
    })

    return HTTParty.post(url, options)
  end

  def self.view_account(account_sid)
    url = "#{BASE_URI}/Accounts/#{account_sid}.json"
    options = Twilio::AUTH_HASH

    return HTTParty.get(url, options)
  end

  def self.view_sms(sms_sid)
    url = "#{BASE_URI}/Accounts/#{ENV['TWILIO_SID']}/Messages/#{sms_sid}.json"
    options = Twilio::AUTH_HASH

    return HTTParty.get(url, options)
  end

end
