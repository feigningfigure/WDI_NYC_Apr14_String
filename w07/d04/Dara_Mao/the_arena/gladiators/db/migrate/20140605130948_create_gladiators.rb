class CreateGladiators < ActiveRecord::Migration
  def change
    create_table :gladiators do |t|

      t.string :name
      t.string :weapon
      t.integer :victory_count

      t.timestamps
    end
  end
end
