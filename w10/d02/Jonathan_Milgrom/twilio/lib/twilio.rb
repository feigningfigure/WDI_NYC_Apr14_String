require 'HTTParty'

class Twilio

  BASE_URI = 'https://api.twilio.com/2010-04-01'
  BASE_URI_SID ="#{Twilio::BASE_URI}/Accounts/#{ENV['MY_TWILIO_SID']}"
  BASE_OPTIONS = {basic_auth: {
          username: ENV['MY_TWILIO_SID'],
          password: ENV['TWILIO_ACCOUNT_AUTH_TOKEN']
        }}

  # def self.send_sms(recipient_number, message)
  #     # .json
  #     url = "#{BASE_URI_SID}/Messages.json"

  #     # everything in 'basic_auth'
  #     options = Twilio::BASE_OPTIONS.merge(
  #       body: {
  #         From: "+18183515239",
  #         To: recipient_number,
  #         Body: message
  #       }
  #       )

  #     # HTTParty
  #     # url, options
  #     return HTTParty.post(url, options)
  # end

  # def self.view_account
  #     # .json
  #     url = "#{BASE_URI_SID}.json"

  #     # everything in 'basic_auth'
  #     options = Twilio::BASE_OPTIONS.merge({})

  #     # HTTParty
  #     # url, options
  #     return HTTParty.get(url, options)
  # end

  # def self.view_sms(sms_sid)
  #   url = "#{BASE_URI_SID}/Messages/#{sms_sid}.json"

  #   # everything in 'basic_auth'
  #   options = Twilio::BASE_OPTIONS.merge({}) 

  #   # HTTParty
  #   # url, options
  #   return HTTParty.get(url, options)
  # end

  def self.action(type, recipient_number=nil, message = nil, sms_sid=nil)

  	case type
  	when "send_sms"
  		url = "#{BASE_URI_SID}/Messages.json"
  		options = Twilio::BASE_OPTIONS.merge(
	        body: {
	          From: "+18183515239",
	          To: recipient_number,
	          Body: message
	        }
        )
        return HTTParty.post(url, options)
  	when "view_account"
		url = "#{BASE_URI_SID}.json"
		options = Twilio::BASE_OPTIONS.merge({})
		return HTTParty.get(url, options)
  	when "view_sms"
 		url = "#{BASE_URI_SID}/Messages/#{sms_sid}.json"
 		options = Twilio::BASE_OPTIONS.merge({})
 		return HTTParty.get(url, options)
   	end
  end

end