class CreateJoinTableSubwayLinesStations < ActiveRecord::Migration
  def change
    create_join_table :subway_lines_stations, id: false do |t|
      t.belongs_to :subway_line
      t.belongs_to :station
      # t.index [:subway_line_id, :station_id]
      # t.index [:station_id, :subway_line_id]
    end
  end
end
