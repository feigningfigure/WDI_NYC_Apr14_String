class MoviesController < ActionController::Base

layout "application"

def index
end

def search
redirect_to '/all'
end

def all
end

end
