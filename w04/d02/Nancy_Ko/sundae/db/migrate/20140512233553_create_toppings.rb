class CreateToppings < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.string :name
      t.integer :quantity
      t.integer :flavor_id

      t.timestamps
    end
  end
end
