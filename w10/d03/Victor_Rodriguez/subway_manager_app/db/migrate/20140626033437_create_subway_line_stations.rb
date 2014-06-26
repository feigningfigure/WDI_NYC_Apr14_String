class CreateSubwayLineStations < ActiveRecord::Migration
  def change
    create_table :subway_line_stations do |t|
      t.integer :line_id
      t.integer :station_id

      t.timestamps
    end
  end
end
