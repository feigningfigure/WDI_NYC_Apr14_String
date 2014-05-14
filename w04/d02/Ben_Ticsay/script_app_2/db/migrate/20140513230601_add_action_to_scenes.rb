class AddActionToScenes < ActiveRecord::Migration
  def change
    add_column :scenes, :action, :text
  end
end
