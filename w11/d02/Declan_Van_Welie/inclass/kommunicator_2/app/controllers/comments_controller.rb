class CommentsController < ApplicationController

  respond_to :json

  def create

    comment = Comment.create(comment_params)
    respond_with comment

  end

  def index

    comments = Comment.all
    respond_with comments

  end

  def show

    comment = Comment.find_by_name(comment_params)
    respond_with comment

  end

  private

  def comment_params
    params.require(:comment).permit(:content, :message_id)
  end

end
