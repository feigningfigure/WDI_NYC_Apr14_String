class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :description
      t.integer :distributor_id
      t.integer :stock

      t.timestamps
    end
  end
end
