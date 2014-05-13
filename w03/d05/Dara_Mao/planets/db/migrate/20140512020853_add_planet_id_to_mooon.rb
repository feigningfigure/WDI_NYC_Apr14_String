class AddPlanetIdToMooon < ActiveRecord::Migration
  def change
    add_column :mooons, :planet_id, :integer
  end
end
