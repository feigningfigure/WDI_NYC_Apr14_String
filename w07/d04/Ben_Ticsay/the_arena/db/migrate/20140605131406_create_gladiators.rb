class CreateGladiators < ActiveRecord::Migration
  def change
    create_table :gladiators do |t|
      t.string :name
      t.string :string
      t.string :weapon
      t.string :string
      t.integer :victory_count

      t.timestamps
    end
  end
end
