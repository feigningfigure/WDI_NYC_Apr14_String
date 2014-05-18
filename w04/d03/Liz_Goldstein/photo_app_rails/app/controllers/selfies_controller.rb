class SelfiesController < ApplicationController

def index
	@selfie = HTTParty.get("https://api.instagram.com/v1/tags/selfie/media/recent?client_id=53e2f4c98e2b4a29bd762a4e28351c0c")

	@selfie1 = @selfie["data"][0]["images"]["standard_resolution"]["url"]
	@selfie2 = @selfie["data"][4]["images"]["standard_resolution"]["url"]
	@selfie3 = @selfie["data"][8]["images"]["standard_resolution"]["url"]

end

def new
  @selfie = Selfie.new
end

def create
Selfie.create(selfie_attributes)

end


private
  # strong params
  def selfie_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:selfie).permit(:user_name, :description, :url)
  end


end
