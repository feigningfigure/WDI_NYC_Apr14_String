class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :type
      t.string :color
      t.integer :person_id

      t.timestamps
    end
  end
end
