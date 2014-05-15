class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.integer :beer_id
      t.integer :ingredient_id
      t.string :amount

      t.timestamps
    end
  end
end
