require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

require_relative 'lib/instagram'
require_relative 'models/photo'


ActiveRecord::Base.establish_connection({
  database: "photo",
  adapter: "postgresql"
})




get '/' do

  erb :index
end

get '/select' do

  response = HTTParty.get("https://api.instagram.com/v1/media/popular?client_id=21f35207dfd74fcca6a8a187fb9b96ab")
    random_image_data = response["data"].sample
    random_image_data2 = response["data"].sample
    @random_image_url = random_image_data["images"]["standard_resolution"]["url"]
    @random_image_url2 = random_image_data2["images"]["standard_resolution"]["url"]
    @picture_one = Photo.create(
    url: @random_image_url,
    liked: false
    )
    @picture_two = Photo.create(
    url: @random_image_url2,
    liked: false
    )
  # @tag = params[:tag]

  #    response = HTTParty.get("https://api.instagram.com/v1/tags/#{@tag}/media/recent?access_token=30607200.f59def8.30db33a6aa244e2ab876937209c42550")
  #   random_image_data = response["data"].sample
  #   random_image_data2 = response["data"].sample
  #   @random_image_url = random_image_data["images"]["standard_resolution"]["url"]
  #   @random_image_url2 = random_image_data2["images"]["standard_resolution"]["url"]
  #   @picture_one = Photo.create(
  #   url: @random_image_url,
  #   liked: false
  #   )
  #   @picture_two = Photo.create(
  #   url: @random_image_url2,
  #   liked: false
  #   )





  erb :select

end


get '/save/:id' do
  # @liked = params[:liked]


@photo = Photo.find(params[:id])
    # Photo.update(params[:id], {:title => title})
    # Photo.update(params[:id], {:description => description})


  erb :save

end

post '/update/:id' do
   title = params[:title]
    description = params[:description]

    # Photo.update(params[:id], {:liked => 'true'})

  # processes new item data


    Photo.update(params[:id], {:liked => true, :title => title, :description => description})




  redirect '/select'
end

get '/gallery' do

  @liked_photos = Photo.where(liked: 'true')
  # @wall = Photo.all

  erb :gallery
end






# get '/:id' do

#   erb :title
# end

# get '/gallery' do

#   erb :gallery
# end

# get '/:id/delete' do

#   erb :delete
# end



