require 'httparty'

class Twilio

  BASE_URI = 'https://api.twilio.com/2010-04-01'
  BASE_AUTH = {
    basic_auth: {
      username: ENV['TWILIO_ACCOUNT_SID'],
      password: ENV['TWILIO_AUTH_TOKEN']
    }
  }



  def self.send_sms(recipient_number, message)
    # .json
    url = "#{Twilio::BASE_URI}/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json"

    # everything in 'basic_auth'
    # options = {
    #   basic_auth: {
    #     username: ENV['TWILIO_ACCOUNT_SID'],
    #     password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
    #   }
    # }

    options = Twilio::BASE_AUTH.merge({
      body: {
        From: '+16466792404',
        To: recipient_number,
        Body: message
      }
    })
    # HTTParty
    # url, options
    return HTTParty.post(url, options)
  end

  def self.view_account(account_sid)
    # .json
    url = "#{Twilio::BASE_URI}/Accounts/#{account_sid}.json"

    # everything in 'basic_auth'
    # options = {
    #   basic_auth: {
    #     username: ENV['TWILIO_ACCOUNT_SID'],
    #     password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
    #   }
    # }
    options = Twilio::BASE_AUTH.merge({})
    # HTTParty
    # url, options
    return HTTParty.get(url, options)
  end

  def self.view_sms(sms_sid)
    url = "#{Twilio::BASE_URI}/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages/#{sms_sid}.json"

    # everything in 'basic_auth'
    # options = {
    #   basic_auth: {
    #     username: ENV['TWILIO_ACCOUNT_SID'],
    #     password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
    #   }
    # }
    options = Twilio::BASE_AUTH.merge({})
    # HTTParty
    # url, options
    return HTTParty.get(url, options)
  end

end

  # def overkill(recipient_number=nil, message=nil, account_sid=nil, sms_id=nil)
  #   url = "#{Twilio::BASE_URI}/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}"

  #   options = Twilio::BASE_AUTH.merge({})
  #   return HTTParty.get(url, options)
  # end





