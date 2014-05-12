class CreateMooons < ActiveRecord::Migration
  def change
    create_table :mooons do |t|
      t.string :name
      t.string :image_url
      t.integer :diameter
      t.integer :mass
      t.boolean :life
      t.string :planet_name

      t.timestamps
    end
  end
end
