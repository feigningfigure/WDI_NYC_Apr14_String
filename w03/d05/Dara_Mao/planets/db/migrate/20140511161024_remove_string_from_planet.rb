class RemoveStringFromPlanet < ActiveRecord::Migration
  def change
    remove_column :planets, :string
  end
end
