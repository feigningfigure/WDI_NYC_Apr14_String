class ItemsController < ApplicationController

  respond_to :json

  def create
    item - Item.create(item_params)
    respond_with item
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
  
end
