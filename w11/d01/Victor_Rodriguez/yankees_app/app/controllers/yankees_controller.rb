class YankeesController < ApplicationController

respond_to :json

def create
 yankee = Yankee.create (yankee_params)
 respond_with yankee
end

private

def yankee_params
  params.require(:yankee).permit(:name)
end

end

end
