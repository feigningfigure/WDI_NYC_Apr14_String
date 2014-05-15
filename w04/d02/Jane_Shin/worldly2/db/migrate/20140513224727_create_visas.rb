class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.integer :country_id
      t.integer :person_id
      t.integer :quantity

      t.timestamps
    end
  end
end
