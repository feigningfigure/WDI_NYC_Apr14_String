class ParentsController < ApplicationController

  def index
    @parents = Parent.order(id: :name)
    @parent = Parent.new
  end

  def show
    @parent = Parent.find(params[:id])
    @children = Children.new
  end

  def create
   Parent.create(parent_attributes)
    render json: {
      strong_params: parent_attributes
    }
    redirect_to parents_path
  end

  def edit
    @parent = Parent.find(params[:id])
    render partial: "parentform", locals: { parent_local: @parent }
  end

   def update
    parent = Parent.find(params[:id])
    parent.update_attributes(parent_attributes)
    redirect_to "/parents/#{params[:id]}"
  end

  private
  def cookbook_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:parent).permit(:name, :relationship)
  end

end
