class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.text :description
      t.integer :computer_id

      t.timestamps
    end
  end
end
