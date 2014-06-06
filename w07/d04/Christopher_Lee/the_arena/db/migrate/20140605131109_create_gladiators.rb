class CreateGladiators < ActiveRecord::Migration
  def change
    create_table :gladiators do |t|
      t.string :name
      t.string :string
      t.string :weapon
      t.string :string
      t.string :victory_count
      t.string :integer

      t.timestamps
    end
  end
end
