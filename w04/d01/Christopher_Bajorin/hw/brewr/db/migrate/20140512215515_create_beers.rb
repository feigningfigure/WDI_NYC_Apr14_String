class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.text :description
      t.integer :brewery_id

      t.timestamps
    end
  end
end
