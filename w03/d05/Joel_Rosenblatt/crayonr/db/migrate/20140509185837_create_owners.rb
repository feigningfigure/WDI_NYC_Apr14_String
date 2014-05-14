class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :formal_title

      t.timestamps
    end
  end
end
