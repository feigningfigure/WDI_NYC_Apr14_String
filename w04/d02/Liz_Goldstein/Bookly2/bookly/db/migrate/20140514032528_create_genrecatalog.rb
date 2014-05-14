class CreateGenrecatalog < ActiveRecord::Migration
  def change
    create_table :genrecatalogs do |t|
      t.integer :genre_id
      t.integer :book_id
      t.integer :rating
    end
  end
end
