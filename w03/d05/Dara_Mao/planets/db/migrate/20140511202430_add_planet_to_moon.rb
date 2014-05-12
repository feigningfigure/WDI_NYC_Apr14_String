class AddPlanetToMoon < ActiveRecord::Migration
  def change
    add_column :moons, :planet, :string
  end
end
