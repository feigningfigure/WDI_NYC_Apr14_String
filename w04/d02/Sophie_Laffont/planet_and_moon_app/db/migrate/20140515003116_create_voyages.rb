class CreateVoyages < ActiveRecord::Migration
  def change
    create_table :voyages do |t|
      t.integer :astronaut_id
      t.integer :planet_id
      t.timestamps
    end
  end
end
