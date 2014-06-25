

class GladiatorsController < ApplicationController
def index
  @gladiators = Gladiator.all
  render :index
end

def new
  @gladiator = Gladiator.new
end

def create

 Gladiator.create({
    name: Faker::Name.name,
    weapon: "sword",
    victory_count: rand(10)
  })

redirect_to root_path

end
end
