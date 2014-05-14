class RemoveTitleFromScenes < ActiveRecord::Migration
  def change
    remove_column :scenes, :title, :string
  end
end
