require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'httparty'

ActiveRecord::Base.establish_connection({
database: "e_store"
adapter: "postgresql"
})


require_relative 'models/items'


get '/' do
     @items = Item.all
     erb :index
end


get '/items/update'

erb :new
end


get '/items/:id' do
     item_id = params[:id]
     item = Item.find(@item_id)
     item.destory
end

get '/items/:id/delete' do

     item_id = params[:id]
     item = Item.find(item_id)
     erb :show
end


process '/items' do
     = params [:name]
     = params [:price]
     = params [:description]
     end


