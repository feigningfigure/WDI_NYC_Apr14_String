class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :owner
      t.string :maker
      t.integer :person_id

      t.timestamps
    end
  end
end
