require 'pry'
class UsersController < ApplicationController

    def index
        @users = User.all

    end

    def create
        if params["name"] == "Abraham Lincoln"
            render :json => {:message => "FAILURE"}
        else
            User.create({
                :name => params["name"],
                :diet => params["favorite_color"]
            })

            render :json => {:message => "Success! Probably..."}
        end
    end

end
