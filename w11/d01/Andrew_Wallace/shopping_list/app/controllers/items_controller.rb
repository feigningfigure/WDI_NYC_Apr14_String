 # items GET    /items(.:format)     items#index
 #       POST   /items(.:format)     items#create
 #  item GET    /items/:id(.:format) items#show
 #       PATCH  /items/:id(.:format) items#update
 #       PUT    /items/:id(.:format) items#update
 #       DELETE /items/:id(.:format) items#destroy

class ItemsController < ApplicationController

  respond_to :json

  def index
    items = Item.all
    respond_with items
  end

  def create
    item = Item.create(item_params)
    respond_with item

  end

  def destroy
    item = Item.find(item_params)
    item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
