class CreateCountry < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :population
      t.string :language
      t.integer :continent_id

      t.timestamps
    end
  end
end
