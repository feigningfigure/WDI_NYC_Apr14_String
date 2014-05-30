class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|

t.string :image_url
t.string :name
      t.timestamps
    end
  end
end
