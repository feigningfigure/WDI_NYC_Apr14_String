class ChangeDateTypeInPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :date
    add_column :posts, :date, :string
  end
end
