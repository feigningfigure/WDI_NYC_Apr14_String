class SelfiesController < ApplicationController

def index
		@selfie = HTTParty.get("https://api.instagram.com/v1/tags/selfie/media/recent?client_id=53e2f4c98e2b4a29bd762a4e28351c0c")

	@selfie1 = @selfie["data"][0]["images"]["standard_resolution"]["url"]
	@selfie2 = @selfie["data"][4]["images"]["standard_resolution"]["url"]
	@selfie3 = @selfie["data"][8]["images"]["standard_resolution"]["url"]

end

def show


	@selfies_show = Selfie.all
end

def create


	#trying to write if/then statement
  description_1 = params[:kfm_1]
  description_2 = params[:kfm_2]
  description_3 = params[:kfm_3]

  @choice1 = params[:url_1]
  @choice2 = params[:url_2]
  @choice3 = params[:url_3]

if  description_1 != description_2 &&
    description_2 != description_3 &&
    description_1 != description_3
  # processes new item data
  name = "selfie1"
  url = params[:url_1]
  Selfie.create(
    user_name: name,
    description: description_1,
    url: url
  )

  name = "selfie2"
  url = params[:url_2]
  Selfie.create(
    user_name: name,
    description: description_2,
    url: url
  )

  name = "selfie3"
  url = params[:url_3]
  Selfie.create(
    user_name: name,
    description: description_3,
    url: url
  )
  redirect "/"
else
  erb :error
	
end

end


private

def selfie_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:selfie).permit(:user_name, :description, :url)
  end



end