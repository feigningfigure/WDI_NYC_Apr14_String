class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :manufacturer
      t.string :model
      t.integer :year
      t.date :purchase_date
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
