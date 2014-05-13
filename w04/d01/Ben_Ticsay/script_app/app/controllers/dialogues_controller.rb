class DialoguesController < ApplicationController

#TODO create index(all) and show(single) pathway for one dialogue
	# def index
		
	# end

	# def show
		
	# end

  def create

    Dialogue.create(dialogue_attributes)


    redirect_to "/scenes/#{dialogue_attributes[:scene_id]}"
  end

  def edit
    @dialogue = Dialogue.find(params[:id])
    render partial: "dialogueform", locals: { dialogue_local: @dialogue, scene_id: @dialogue.scene.id }
  end

  def update
    dialogue = Dialogue.find(params[:id])

    dialogue.update_attributes(dialogue_attributes)

    redirect_to "/scenes/#{dialogue.scene.id}"
  end

  private

  def dialogue_attributes
    params.require(:dialogue).permit(:character, :content, :scene_id)
  end

end