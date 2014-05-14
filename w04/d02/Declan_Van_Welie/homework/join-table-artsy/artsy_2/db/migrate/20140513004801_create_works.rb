class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :medium
      t.integer :year_finished
      t.string :image_url
      t.integer :artist_id
      t.timestamps


    end
  end
end
