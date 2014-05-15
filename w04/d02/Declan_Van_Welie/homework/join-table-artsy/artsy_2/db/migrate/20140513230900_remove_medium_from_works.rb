class RemoveMediumFromWorks < ActiveRecord::Migration
  def change
    remove_column :works, :medium, :string
  end
end
