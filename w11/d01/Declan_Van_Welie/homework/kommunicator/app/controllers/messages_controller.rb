class MessagesController < ApplicationController

  respond_to :json

  def create

    message = Message.create(message_params)
    respond_with message

  end

  def index

    messages = Message.all
    respond_with messages

  end

  def show

    message = Message.find_by_title(message_params)
    respond_with message

  end

  def destroy

    message = Message.find(params[:id])
    message.destroy

    respond_with message
  end

  def update

  message = Message.find(params[:id])
  message.update_attributes(title: params[:title])

  respond_with message
  end

  private

  def message_params
    params.require(:message).permit(:title, :id)
  end

end
