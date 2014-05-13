class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image_url
      t.integer :founded
      t.integer :company_id

      t.timestamps
    end
  end
end
