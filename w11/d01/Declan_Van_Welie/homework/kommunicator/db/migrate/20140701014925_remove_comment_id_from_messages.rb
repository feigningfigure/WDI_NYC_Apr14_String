class RemoveCommentIdFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :comment_id, :integer
  end
end
