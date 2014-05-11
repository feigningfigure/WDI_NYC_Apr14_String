class RemoveBooleanFromPlanet < ActiveRecord::Migration
  def change
    remove_column :planets, :boolean
  end
end
