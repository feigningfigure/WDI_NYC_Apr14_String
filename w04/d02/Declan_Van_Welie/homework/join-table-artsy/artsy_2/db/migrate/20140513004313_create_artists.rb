class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :birth_year
      t.string :movement
      t.string :nationality
      t.timestamps
    end
  end
end
