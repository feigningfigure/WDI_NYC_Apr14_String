class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.int :id
      t.int :producer_id
      t.int :beat_id
      t.int :sample_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
