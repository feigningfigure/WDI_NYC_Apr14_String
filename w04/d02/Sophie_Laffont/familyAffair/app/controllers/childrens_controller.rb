class ChildrensController < ApplicationController

  def create

    Children.create(children_attributes)
    redirect_to "/parents/#{children_attributes[:parent_id]}"
  end

  def edit
    @children = Children.find(params[:id])
    render partial: "childrenform", locals: { children_local: @children, parent_id: @children.parent.id }
  end

  def update
    children = Children.find(params[:id])
    children.update_attributes(children_attributes)
    redirect_to "/parents/#{recipe.parent.id}"

  end

  private

  def children_attributes
    params.require(:children).permit(:name, :sex, :parent_id)
  end

end
