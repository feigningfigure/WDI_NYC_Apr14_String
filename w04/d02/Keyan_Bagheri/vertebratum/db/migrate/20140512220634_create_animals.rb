class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :scientific_name
      t.integer :vertebrae_id
      t.text :characteristics

      t.timestamps
    end
  end
end
