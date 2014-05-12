class AddMassFactorToPlanets < ActiveRecord::Migration
  def change
    add_column :planets, :mass_factor, :integer
  end
end
