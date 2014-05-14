class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :computer_id
      t.integer :application_id
      t.integer :quantity

      t.timestamps
    end
  end
end
