class ScenesController < ApplicationController

	def index
		@scenes = Scene.all

	    # new instance of scene for the form helper
	    @scene = Scene.new
	end

  def show

    # define @scene
    @scene = Scene.find(params[:id])

    # makes the form work
    @dialogue = Dialogue.new

  end

  def create

    # new way... *but requires private_method
    Scene.create(scene_attributes)

    # render json: {
    #   strong_params: scene_attributes
    # }


    # when done...
    redirect_to scenes_path
  end

  def edit
    @scene = Scene.find(params[:id])
   
    render partial: "sceneform", locals: { scene_local: @scene }
  end

   def update

    scene = Scene.find(params[:id])

    scene.update_attributes(scene_attributes)

  
    redirect_to "/scenes/#{params[:id]}"
  end

  private

  # strong params
  def scene_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:scene).permit(:heading, :action)
  end



end