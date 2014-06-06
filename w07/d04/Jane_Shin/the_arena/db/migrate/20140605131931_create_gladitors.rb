class CreateGladitors < ActiveRecord::Migration
  def change
    create_table :gladitors do |t|
      t.string :name
      t.string :weapon
      t.integer :victory_count

      t.timestamps
    end
  end
end
