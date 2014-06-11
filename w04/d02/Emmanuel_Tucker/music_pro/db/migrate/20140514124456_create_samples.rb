class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.int :beat_id
      t.int :song_id
      t.int :producer_id
      t.int :gb

      t.timestamps
    end
  end
end
