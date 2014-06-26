class CreateSubStats < ActiveRecord::Migration
  def change
    create_table :sub_stats do |t|
      t.integer :subway_line_id
      t.integer :station_id

      t.timestamps
    end
  end
end
