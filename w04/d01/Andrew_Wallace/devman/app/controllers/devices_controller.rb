class DevicesController < ApplicationController

  def create

    Device.create(device_attributes)

    # render json: Recipe.create(recipe_attributes)
    redirect_to "/users/#{device_attributes[:user_id]}"
  end

  def edit
    @device = Device.find(params[:id])
    render partial: "deviceform", locals: { device_local: @device, user_id: @device.user.id }
  end

  def update
    device = Device.find(params[:id])

    device.update_attributes(device_attributes)

    redirect_to "/users/#{device.user.id}"
    # render json: params
  end

  private

  def device_attributes
    params.require(:device).permit(:manufacturer, :model, :year, :purchase_date, :description, :user_id)
  end

end
