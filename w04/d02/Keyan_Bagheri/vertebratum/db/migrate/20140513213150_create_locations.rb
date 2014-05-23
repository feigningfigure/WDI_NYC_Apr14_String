class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :animal_id
      t.integer :region_id
      t.integer :quanitity
      t.string :unit

      t.timestamps
    end
  end
end
