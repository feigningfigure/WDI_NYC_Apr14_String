class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :location
      t.integer :product_id

      t.timestamps
    end
  end
end
