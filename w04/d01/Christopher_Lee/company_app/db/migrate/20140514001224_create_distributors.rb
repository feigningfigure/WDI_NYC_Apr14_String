class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name
      t.integer :product_id
      t.integer :country_id

      t.timestamps
    end
  end
end
